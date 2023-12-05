include("/home/gl9102/BDD/build/cmake/CPM_0.34.0.cmake")
CPMAddPackage(GITLAB_REPOSITORY;libeigen/eigen;GIT_TAG;master;EXCLUDE_FROM_ALL;YES)
set(eigen_FOUND TRUE)