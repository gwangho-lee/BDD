#include "bdd_solver.h"
#include <mpi.h>

int main(int argc, char** argv)
{
    int nr_nodes;
    int myid;

    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &nr_nodes);
    MPI_Comm_rank(MPI_COMM_WORLD, &myid);
    LPMP::bdd_solver_options options(argc, argv);
    LPMP::bdd_solver solver(options);
    solver.solve();
    solver.round();
}
