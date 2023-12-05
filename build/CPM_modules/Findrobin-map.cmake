include("/home/gl9102/BDD/build/cmake/CPM_0.34.0.cmake")
CPMAddPackage(GITHUB_REPOSITORY;Tessil/robin-map;GIT_TAG;master;EXCLUDE_FROM_ALL;YES)
set(robin-map_FOUND TRUE)