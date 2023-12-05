include("/home/gl9102/BDD/build/cmake/CPM_0.34.0.cmake")
CPMAddPackage(NAME;pybind11;GIT_TAG;master;GITHUB_REPOSITORY;pybind/pybind11;OPTIONS;PYBIND11_CPP_STANDARD -std=c++17;PYBIND11_INSTALL ON CACHE BOOL)
set(pybind11_FOUND TRUE)