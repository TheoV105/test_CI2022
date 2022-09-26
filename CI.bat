rmdir /s /q build
mkdir build
cd build
cmake -DFIRSTORGANIZEDCMAKE_WITH_TESTS:BOOL=TRUE ..
cmake --build . --config Release
ctest -C Release
cd ..
