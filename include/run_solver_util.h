#pragma once

#include <chrono>
#include <iostream>
#include <numeric>
#include "bdd_logging.h"
#include <omp.h>

namespace LPMP {
    
    template<typename SOLVER>
        //void fast_solver(std::vector<LPMP::multi_gpu<double>>& s, const int num_gpus, const size_t max_iter, const double tolerance, const double improvement_slope, const double time_limit, const bool verbose = true)
        void fast_solver(std::vector<SOLVER>& s, const int num_gpus, const size_t max_iter, const double tolerance, const double improvement_slope, const double time_limit, const bool verbose = true)
        {
            assert(improvement_slope > 0.0 && improvement_slope < 1.0);
            assert(time_limit >= 0.0);
            assert(tolerance >= 0.0);

            if(verbose)
            {
                bdd_log << "[fast solver] termination criteria:\n";
                bdd_log << "[fast solver]     max iter = " << max_iter << "\n";
                bdd_log << "[fast solver]     time limit = " << time_limit << "s\n";
                bdd_log << "[fast solver]     tolerance = " << tolerance << ", lb_current-lb_prev < |tolerance*lb_prev|" << "\n";
                bdd_log << "[fast solver]     improvement_slope = " << improvement_slope << ", lb_current-lb_prev < tolerance*(lb_1-lb_0)" << "\n";
            }

            const auto start_time = std::chrono::steady_clock::now();
            const double lb_initial = s[0].lower_bound();
            double lb_first_iter = std::numeric_limits<double>::max();
            double lb_prev = lb_initial;
            double lb_post = lb_prev;
            if(verbose)
            {
                bdd_log << "[fast solver] initial lower bound = " << lb_prev;
                auto time = std::chrono::steady_clock::now();
                bdd_log << ", time = " << (double) std::chrono::duration_cast<std::chrono::milliseconds>(time - start_time).count() / 1000 << " s\n";
            }

            const size_t nr_threads = num_gpus;

#pragma omp parallel for ordered schedule(static) num_threads(nr_threads)
            //for(size_t iter=0; iter<max_iter; ++iter) {
            //    for (int i = 0; i < num_gpus; i++) {
            for (int tid = 0; tid < num_gpus; ++tid) {
                for(size_t iter=0; iter<max_iter; ++iter) {
                    s[tid].forward_mm();
                    //s[i].print();

                    if (tid == 0) {
                        s[tid].distribute(s[tid + 1]);
                    }
                    else {
                        s[tid].distribute(s[tid - 1]);
                    }
                    
                    s[tid].normalize_delta();
                    s[tid].backward_mm();
                    s[tid].normalize_delta();

                lb_prev = lb_post;
                lb_post = s[tid].lower_bound();
                if(iter == 0)
                    lb_first_iter = lb_post;
                if(verbose)
                    bdd_log << "[fast solver] iteration " << iter << ", lower bound = " << lb_post;
                const auto time = std::chrono::steady_clock::now();
                double time_spent = (double) std::chrono::duration_cast<std::chrono::milliseconds>(time - start_time).count() / 1000;
                if(verbose)
                    bdd_log << ", time = " << time_spent << " s\n";
                if (time_spent > time_limit)
                {
                    if(verbose)
                        bdd_log << "[fast solver] Time limit reached.\n";
                    break;
                }
                if (std::abs(lb_prev-lb_post) < std::abs(tolerance*lb_prev))
                {
                    if(verbose)
                        bdd_log << "[fast solver] Relative progress less than tolerance (" << tolerance << ")\n";
                    break;
                }
                if(std::abs(lb_prev - lb_post) < improvement_slope * std::abs(lb_initial - lb_first_iter))
                {
                    if(verbose)
                        bdd_log << "[fast solver] improvement smaller than " << 100*improvement_slope << "\% of initial improvement\n";
                    break;
                }
                if(lb_post == std::numeric_limits<double>::infinity())
                {
                    if(verbose)
                        bdd_log << "[fast solver] problem infeasible\n";
                    break;
                }
            }
            }
            if(verbose)
                bdd_log << "[fast solver] final lower bound = " << s[0].lower_bound() << "\n"; 
        } 

    template<typename SOLVER>
        void run_solver(SOLVER& s, const size_t max_iter, const double tolerance, const double improvement_slope, const double time_limit, const bool verbose = true)
        {
            assert(improvement_slope > 0.0 && improvement_slope < 1.0);
            assert(time_limit >= 0.0);
            assert(tolerance >= 0.0);

            if(verbose)
            {
                bdd_log << "[bdd solver] termination criteria:\n";
                bdd_log << "[bdd solver]     max iter = " << max_iter << "\n";
                bdd_log << "[bdd solver]     time limit = " << time_limit << "s\n";
                bdd_log << "[bdd solver]     tolerance = " << tolerance << ", lb_current-lb_prev < |tolerance*lb_prev|" << "\n";
                bdd_log << "[bdd solver]     improvement_slope = " << improvement_slope << ", lb_current-lb_prev < tolerance*(lb_1-lb_0)" << "\n";
            }

            const auto start_time = std::chrono::steady_clock::now();
            const double lb_initial = s.lower_bound();
            double lb_first_iter = std::numeric_limits<double>::max();
            double lb_prev = lb_initial;
            double lb_post = lb_prev;
            if(verbose)
            {
                bdd_log << "[bdd solver] initial lower bound = " << lb_prev;
                auto time = std::chrono::steady_clock::now();
                bdd_log << ", time = " << (double) std::chrono::duration_cast<std::chrono::milliseconds>(time - start_time).count() / 1000 << " s\n";
            }
            for(size_t iter=0; iter<max_iter; ++iter)
            {
                s.iteration();
                lb_prev = lb_post;
                lb_post = s.lower_bound();
                if(iter == 0)
                    lb_first_iter = lb_post;
                if(verbose)
                    bdd_log << "[bdd solver] iteration " << iter << ", lower bound = " << lb_post;
                const auto time = std::chrono::steady_clock::now();
                double time_spent = (double) std::chrono::duration_cast<std::chrono::milliseconds>(time - start_time).count() / 1000;
                if(verbose)
                    bdd_log << ", time = " << time_spent << " s\n";
                if (time_spent > time_limit)
                {
                    if(verbose)
                        bdd_log << "[bdd solver] Time limit reached.\n";
                    break;
                }
                if (std::abs(lb_prev-lb_post) < std::abs(tolerance*lb_prev))
                {
                    if(verbose)
                        bdd_log << "[bdd solver] Relative progress less than tolerance (" << tolerance << ")\n";
                    break;
                }
                if(std::abs(lb_prev - lb_post) < improvement_slope * std::abs(lb_initial - lb_first_iter))
                {
                    if(verbose)
                        bdd_log << "[bdd solver] improvement smaller than " << 100*improvement_slope << "\% of initial improvement\n";
                    break;
                }
                if(lb_post == std::numeric_limits<double>::infinity())
                {
                    if(verbose)
                        bdd_log << "[bdd solver] problem infeasible\n";
                    break;
                }
            }
            if(verbose)
                bdd_log << "[bdd solver] final lower bound = " << s.lower_bound() << "\n"; 
        } 
}
