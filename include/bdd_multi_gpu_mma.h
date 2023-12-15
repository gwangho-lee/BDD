#pragma once

#include "bdd_cuda_base.h"
#include "bdd_cuda_parallel_mma.h"

namespace LPMP {

    template<typename REAL>
    class bdd_multi_gpu_mma : public bdd_cuda_base<REAL> {
        public:
            // using bdd_cuda_base::bdd_cuda_base; // inherit base constructor

            thrust::device_vector<int> nbpv();
            void setnbpv(thrust::device_vector<int> nbpv);

            void init();
            bdd_multi_gpu_mma() {}
            bdd_multi_gpu_mma(const BDD::bdd_collection& bdd_col);
            bdd_multi_gpu_mma(const BDD::bdd_collection& bdd_col, const int deviceID);

            void print();
            void iteration(const REAL omega = 0.5);
            void iteration(const int num_gpus, const size_t max_ter, const double lb_initial, const REAL omega = 0.5);

            void distribute(multi_gpu<REAL>& solver);
            void forward_mm(const REAL omega, thrust::device_vector<REAL>& delta_lo_hi);
            void forward_mm(const REAL omega = 0.5);
            void backward_mm(const REAL omega, thrust::device_vector<REAL>& delta_lo_hi);
            void backward_mm(const REAL omega = 0.5);

            void fast_forward_mm(const REAL omega, REAL *delta_lo_hi);
            void fast_backward_mm(const REAL omega, REAL *delta_lo_hi);

            // Normalize delta by num BDDs to distribute isotropically.
            // delta_lo_ -> delta_hi_/#BDDs, delta_hi_ -> delta_hi_/#BDDs
            void normalize_delta(thrust::device_vector<REAL>& delta_lo_hi) const;
            void normalize_delta();
            void fast_normalize_delta(REAL *delta_lo_hi) const;

            thrust::device_vector<REAL> net_solver_costs() const;

            template<typename ITERATOR>
            void gradient_step(ITERATOR grad_begin, ITERATOR grad_end, double step_size);

        protected:
            void min_marginals_from_directional_costs(const int hop_index, const REAL omega_scalar);

            // Computes min-marginals for hop 'hop_index' and writes at starting from *mm_diff_ptr + layer start offset (GPU pointer). Uses omega_vec instead of omega_scalar if given. 
            void min_marginals_from_directional_costs(const int hop_index, const REAL omega_scalar, thrust::device_ptr<REAL> mm_diff_ptr, const thrust::device_ptr<const REAL> omega_vec = nullptr);

            // compute delta_lo_ and delta_hi_ (per variable) from mm_to_distribute (per bdd node)
            void compute_delta(const thrust::device_ptr<const REAL> mm_to_distribute, thrust::device_ptr<REAL> delta_lo_hi) const;
            void fast_compute_delta(const thrust::device_ptr<const REAL> mm_to_distribute, REAL *delta_lo_hi) const;

            // set argument to all infinity
            void flush_mm(thrust::device_ptr<REAL> mm_diff_ptr);

            thrust::device_vector<REAL> hi_cost_out_, lo_cost_out_; // One entry per BDD layer.

            // Deferred min-marginal sums.
            thrust::device_vector<REAL> delta_lo_hi_; // Two entries per primal variable. Even indices contain delta_lo and odd indices contain delta_hi.
            thrust::device_vector<REAL> temp_delta_lo_hi_;

        private:
            int deviceID = 0;

            //void forward_iteration(const REAL omega);
            //void backward_iteration(const REAL omega);

            thrust::device_vector<REAL> mm_lo_local_; // Contains mm_lo for last computed hop. Memory allocated is as per max(cum_nr_layers_per_hop_dist_).
    };

//    template<typename REAL>
//    struct add_scaled_product_func {
//        const REAL stepsize;
//        __host__ __device__ REAL operator()(const REAL& hi_cost, const REAL& gradient) const {
//            return hi_cost + stepsize * gradient;
//        }
//    };

    template<typename REAL>
    template<typename ITERATOR>
    void bdd_multi_gpu_mma<REAL>::gradient_step(ITERATOR grad_begin, ITERATOR grad_end, double step_size)
    {
        assert(std::distance(grad_begin, grad_end) == this->hi_cost_.size());
        thrust::transform(this->hi_cost_.begin(), this->hi_cost_.end(), grad_begin, this->hi_cost_.begin(), 
            add_scaled_product_func<REAL>({REAL(step_size)}));
        this->flush_forward_states();
        this->flush_backward_states();
    }

 
}
