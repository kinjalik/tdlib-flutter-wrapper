#!/bin/bash

mkdir -p build-$ABI
cd build-$ABI
cmake .. -DCMAKE_TOOLCHAIN_FILE=${ANDROID_SDK_ROOT}/ndk-bundle/build/cmake/android.toolchain.cmake -DCMAKE_BUILD_TYPE=MinSizeRel -GNinja -DANDROID_ABI=${ABI} || exit 1
cmake --build . || exit 1
cd ..

mkdir -p libs/$ABI/
cp build-$ABI/libtd*.so* libs/$ABI/
