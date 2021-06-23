#!/bin/sh

PROJECT_ROOT=$CI_PROJECT_DIR/tdlib-compile-android
TDLIB_ROOT=$PROJECT_ROOT/td
BUILD_ROOT=$PROJECT_ROOT/td/example/libtdjsonandroid

# Clone tdlib sources
if [ ! -d $TDLIB_ROOT ] 
then
    cd $PROJECT_ROOT
    git clone $TDLIB_REPOSITORY
fi

# Copy build scripts to examples
if [ ! -d $BUILD_ROOT ] 
then
    cp -r $PROJECT_ROOT/libtdjsonandroid $TDLIB_ROOT/example
fi

# Download OpenSSL
if [ ! -f "$BUILD_ROOT/third_party/crypto/openssl-OpenSSL_1_1_1g.tar.gz" ]
then
    echo "DOWNLOAD"
    cd $BUILD_ROOT/third_party/crypto
    ls
    wget $OPENSSL_ARTIFACT
    mv OpenSSL_1_1_1g.tar.gz openssl-OpenSSL_1_1_1g.tar.gz
fi

# Make executable
chmod +x -R $TDLIB_ROOT

# Compile Open SSL
cd $BUILD_ROOT/third_party/crypto
sh build-all.sh

# Compile TDLib
cd $BUILD_ROOT
sh export.sh
