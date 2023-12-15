#pragma once

#include "bdd_collection/bdd_collection.h"
#include "two_dimensional_variable_array.hxx"
#include <thrust/device_vector.h>
#include <memory>

namespace LPMP {

    template<typename REAL>
    class multi_gpu {
        public:
            multi_gpu(BDD::bdd_collection& bdd_col);
            multi_gpu(BDD::bdd_collection& bdd_col, const int deviceID);
            template<typename ITERATOR>
            multi_gpu(BDD::bdd_collection& bdd_col, const int deviceID, ITERATOR cost_begin, ITERATOR cost_end);
            template<typename ITERATOR>
            multi_gpu(BDD::bdd_collection& bdd_col, ITERATOR cost_begin, ITERATOR cost_end);
            multi_gpu(multi_gpu&&);
            multi_gpu& operator=(multi_gpu&&);
            ~multi_gpu();
            template<typename ITERATOR>
                void update_costs(ITERATOR cost_lo_begin, ITERATOR cost_lo_end, ITERATOR cost_hi_begin, ITERATOR cost_hi_end);
            double lower_bound();
            two_dim_variable_array<std::array<double,2>> min_marginals();
            void iteration();
            void iteration(const int num_gpus, const size_t max_iter, const double lb_initial);
            void distribute(multi_gpu<REAL>& solver);
            void forward_mm();
            void backward_mm();
            void normalize_delta();
            void backward_run(); 

            std::vector<int> nbpv();
            void setnbpv(std::vector<int> nbpv, const int deviceID);

            std::vector<char> incremental_mm_agreement_rounding(const double init_delta, const double delta_grwoth_rate, const int num_itr_lb, const int num_rounds = 500);
            void print();
            
            thrust::device_vector<REAL>& get_temp_delta_lo_hi_();

        //private:
            int deviceID;
            class impl;
            std::unique_ptr<impl> pimpl;
    };

    template<typename REAL>
        template<typename ITERATOR>
        multi_gpu<REAL>::multi_gpu(BDD::bdd_collection& bdd_col, const int deviceID, ITERATOR cost_begin, ITERATOR cost_end)
        : multi_gpu(bdd_col, deviceID)
        {
            update_costs(cost_begin, cost_begin, cost_begin, cost_end);
        }

    template<typename REAL>
        template<typename ITERATOR>
        multi_gpu<REAL>::multi_gpu(BDD::bdd_collection& bdd_col, ITERATOR cost_begin, ITERATOR cost_end)
        : multi_gpu(bdd_col)
        {
            update_costs(cost_begin, cost_begin, cost_begin, cost_end);
        }
};
