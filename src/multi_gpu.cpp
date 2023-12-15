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
            impl(BDD::bdd_collection& bdd_col, const int deviceID = 0);

#ifdef WITH_CUDA
            bdd_multi_gpu_mma<REAL> pmma;
#endif
    };

    template<typename REAL>
    multi_gpu<REAL>::impl::impl(BDD::bdd_collection& bdd_col, const int deviceID)
#ifdef WITH_CUDA
    : pmma(bdd_col, deviceID)
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
    multi_gpu<REAL>::multi_gpu(BDD::bdd_collection& bdd_col, const int deviceID) : deviceID(deviceID)
    {
#ifdef WITH_CUDA
        MEASURE_FUNCTION_EXECUTION_TIME; 
        pimpl = std::make_unique<impl>(bdd_col, deviceID);
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
    //template void multi_gpu<float>::update_costs(double*, double*, double*, double*);
    //template void multi_gpu<float>::update_costs(std::vector<double>::iterator, std::vector<double>::iterator, std::vector<double>::iterator, std::vector<double>::iterator);
    //template void multi_gpu<float>::update_costs(std::vector<double>::const_iterator, std::vector<double>::const_iterator, std::vector<double>::const_iterator, std::vector<double>::const_iterator);

    //template void multi_gpu<float>::update_costs(float*, float*, float*, float*);
    //template void multi_gpu<float>::update_costs(std::vector<float>::iterator, std::vector<float>::iterator, std::vector<float>::iterator, std::vector<float>::iterator);
    //template void multi_gpu<float>::update_costs(std::vector<float>::const_iterator, std::vector<float>::const_iterator, std::vector<float>::const_iterator, std::vector<float>::const_iterator);

    template void multi_gpu<double>::update_costs(double*, double*, double*, double*);
    template void multi_gpu<double>::update_costs(std::vector<double>::iterator, std::vector<double>::iterator, std::vector<double>::iterator, std::vector<double>::iterator);
    template void multi_gpu<double>::update_costs(std::vector<double>::const_iterator, std::vector<double>::const_iterator, std::vector<double>::const_iterator, std::vector<double>::const_iterator);

    template void multi_gpu<double>::update_costs(float*, float*, float*, float*);
    template void multi_gpu<double>::update_costs(std::vector<float>::iterator, std::vector<float>::iterator, std::vector<float>::iterator, std::vector<float>::iterator);
    template void multi_gpu<double>::update_costs(std::vector<float>::const_iterator, std::vector<float>::const_iterator, std::vector<float>::const_iterator, std::vector<float>::const_iterator);

    template<typename REAL>
    void multi_gpu<REAL>::print()
    {
#ifdef WITH_CUDA
        pimpl->pmma.print();
#endif
    }
    
    template<typename REAL>
    int multi_gpu<REAL>::getdeviceID()
    {
#ifdef WITH_CUDA
        return deviceID;
#endif
    }

    template<typename REAL>
    thrust::device_vector<REAL>& multi_gpu<REAL>::get_temp_delta_lo_hi_()
    {
#ifdef WITH_CUDA
        return pimpl->pmma.get_temp_delta_lo_hi_();
#endif
    }

    template<typename REAL>
    std::vector<int> multi_gpu<REAL>::nbpv()
    {
#ifdef WITH_CUDA
        thrust::device_vector<int> temp = pimpl->pmma.nbpv();
        
        int N = temp.size();

        std::vector<int> h_vec(N);

        thrust::copy(temp.begin(), temp.end(), h_vec.begin());
        return h_vec;
#endif
    }

    template<typename REAL>
    void multi_gpu<REAL>::setnbpv(std::vector<int> nbpv, const int deviceID)
    {
#ifdef WITH_CUDA
        int N = nbpv.size();
        cudaSetDevice(deviceID);
        thrust::device_vector<int> d_nbpv(nbpv.begin(), nbpv.end());

        pimpl->pmma.setnbpv(d_nbpv);
#endif
    }

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
    void multi_gpu<REAL>::distribute(multi_gpu<REAL>& solver)
    {
#ifdef WITH_CUDA
        fprintf(stderr, "TEST || cudaMemcpyPeer start\n");
        cudaMemcpyPeer(thrust::raw_pointer_cast(solver.get_temp_delta_lo_hi_().data()), solver.getdeviceID(), thrust::raw_pointer_cast(pimpl->pmma.get_delta_lo_hi_().data()), this->deviceID, pimpl->pmma.get_delta_lo_hi_().size() * sizeof(REAL));
      
        fprintf(stderr, "TEST || solver deviceID: %d\n", solver.getdeviceID());
        fprintf(stderr, "TEST || this deviceID: %d\n", this->deviceID);

        fprintf(stderr, "TEST || cudaMemcpyPeer end\n");
        fprintf(stderr, "TEST || merge start\n");
        pimpl->pmma.merge_delta_lo_hi_();
        fprintf(stderr, "TEST || merge end\n");
#endif
    }

    template<typename REAL>
    void multi_gpu<REAL>::forward_mm()
    {
#ifdef WITH_CUDA
        pimpl->pmma.forward_mm();
#endif
    }

    template<typename REAL>
    void multi_gpu<REAL>::backward_mm()
    {
#ifdef WITH_CUDA
        pimpl->pmma.backward_mm();
#endif
    }

    template<typename REAL>
    void multi_gpu<REAL>::normalize_delta()
    {
#ifdef WITH_CUDA
        pimpl->pmma.normalize_delta();
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

    //template class multi_gpu<float>;
    template class multi_gpu<double>;

}
