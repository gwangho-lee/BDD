#include "multi_gpu.h"
#ifdef WITH_CUDA
#include "bdd_multi_gpu_mma.h"
#include "incremental_mm_agreement_rounding_cuda.h"
#endif
#include "time_measure_util.h"

namespace LPMP {

    template<typename REAL>
    class multi_gpu<REAL>::impl {
        public:
            impl(BDD::bdd_collection& bdd_col);

#ifdef WITH_CUDA
            bdd_multi_gpu_mma<REAL> pmma;
#endif
    };

    template<typename REAL>
    multi_gpu<REAL>::impl::impl(BDD::bdd_collection& bdd_col)
#ifdef WITH_CUDA
    : pmma(bdd_col)
#endif
    {
#ifndef WITH_CUDA
        throw std::runtime_error("bdd solver not compiled with CUDA support");
#endif
    }

    template<typename REAL>
    multi_gpu<REAL>::multi_gpu(BDD::bdd_collection& bdd_col)
    {
#ifdef WITH_CUDA
        MEASURE_FUNCTION_EXECUTION_TIME; 
        pimpl = std::make_unique<impl>(bdd_col);
#else
        throw std::runtime_error("bdd_solver not compiled with CUDA support");
#endif
    }

    template<typename REAL>
    multi_gpu<REAL>::multi_gpu(multi_gpu&& o)
        : pimpl(std::move(o.pimpl))
    {}

    template<typename REAL>
    multi_gpu<REAL>& multi_gpu<REAL>::operator=(multi_gpu<REAL>&& o)
    { 
        pimpl = std::move(o.pimpl);
        return *this;
    }

    template<typename REAL>
    multi_gpu<REAL>::~multi_gpu()
    {}

    template<typename REAL>
    template<typename COST_ITERATOR>
    void multi_gpu<REAL>::update_costs(COST_ITERATOR costs_lo_begin, COST_ITERATOR costs_lo_end, COST_ITERATOR costs_hi_begin, COST_ITERATOR costs_hi_end)
    {
#ifdef WITH_CUDA
        pimpl->pmma.update_costs(costs_lo_begin, costs_lo_end, costs_hi_begin, costs_hi_end);
#endif
    }

    // Need to have explicit instantiation in the base.
    template void multi_gpu<float>::update_costs(double*, double*, double*, double*);
    template void multi_gpu<float>::update_costs(std::vector<double>::iterator, std::vector<double>::iterator, std::vector<double>::iterator, std::vector<double>::iterator);
    template void multi_gpu<float>::update_costs(std::vector<double>::const_iterator, std::vector<double>::const_iterator, std::vector<double>::const_iterator, std::vector<double>::const_iterator);

    template void multi_gpu<float>::update_costs(float*, float*, float*, float*);
    template void multi_gpu<float>::update_costs(std::vector<float>::iterator, std::vector<float>::iterator, std::vector<float>::iterator, std::vector<float>::iterator);
    template void multi_gpu<float>::update_costs(std::vector<float>::const_iterator, std::vector<float>::const_iterator, std::vector<float>::const_iterator, std::vector<float>::const_iterator);

    template void multi_gpu<double>::update_costs(double*, double*, double*, double*);
    template void multi_gpu<double>::update_costs(std::vector<double>::iterator, std::vector<double>::iterator, std::vector<double>::iterator, std::vector<double>::iterator);
    template void multi_gpu<double>::update_costs(std::vector<double>::const_iterator, std::vector<double>::const_iterator, std::vector<double>::const_iterator, std::vector<double>::const_iterator);

    template void multi_gpu<double>::update_costs(float*, float*, float*, float*);
    template void multi_gpu<double>::update_costs(std::vector<float>::iterator, std::vector<float>::iterator, std::vector<float>::iterator, std::vector<float>::iterator);
    template void multi_gpu<double>::update_costs(std::vector<float>::const_iterator, std::vector<float>::const_iterator, std::vector<float>::const_iterator, std::vector<float>::const_iterator);

    template<typename REAL>
    void multi_gpu<REAL>::backward_run()
    {
#ifdef WITH_CUDA
        pimpl->pmma.backward_run();
#endif
    }

    template<typename REAL>
    void multi_gpu<REAL>::iteration()
    {
#ifdef WITH_CUDA
        pimpl->pmma.iteration();
#endif
    }

    template<typename REAL>
    void multi_gpu<REAL>::iteration(const int num_gpus, const size_t max_iter, const double lb_initial)
    {
#ifdef WITH_CUDA
        pimpl->pmma.iteration(num_gpus, max_iter, lb_initial);
#endif
    }

    template<typename REAL>
    double multi_gpu<REAL>::lower_bound()
    {
#ifdef WITH_CUDA
        return pimpl->pmma.lower_bound();
#endif
        return -std::numeric_limits<double>::infinity();
    } 

    template<typename REAL>
    two_dim_variable_array<std::array<double,2>> multi_gpu<REAL>::min_marginals()
    {
#ifdef WITH_CUDA
        return pimpl->pmma.min_marginals();
#endif
        return {};
    }

    template<typename REAL>
    std::vector<char> multi_gpu<REAL>::incremental_mm_agreement_rounding(const double init_delta, const double delta_growth_rate, const int num_itr_lb, const int num_rounds)
    {
#ifdef WITH_CUDA
        return incremental_mm_agreement_rounding_cuda(pimpl->pmma, init_delta, delta_growth_rate, num_itr_lb, true, num_rounds);
#endif
        return {};
    }

    template class multi_gpu<float>;
    template class multi_gpu<double>;

}
