include("/home/gl9102/BDD/build/cmake/CPM_0.34.0.cmake")
CPMAddPackage(NAME;cereal;GIT_TAG;master;GITHUB_REPOSITORY;USCiLab/cereal;OPTIONS;BUILD_DOC OFF;BUILD_SANDBOX OFF)
set(cereal_FOUND TRUE)