include("/home/gl9102/BDD/build/cmake/CPM_0.34.0.cmake")
CPMAddPackage(GITHUB_REPOSITORY;NVIDIA/thrust;GIT_TAG;main;EXCLUDE_FROM_ALL;YES)
set(thrust_FOUND TRUE)