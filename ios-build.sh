cmake source -G "Unix Makefiles" -DCMAKE_TOOLCHAIN_FILE=../ios.toolchain.cmake -DPLATFORM=OS64 -B ios_build \
    -DCMAKE_INSTALL_PREFIX=./ios_build \
    -DCMAKE_SYSTEM_NAME=iOS \
    -DCMAKE_OSX_DEPLOYMENT_TARGET=11.0 \
    -DCMAKE_SYSROOT="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk" \
    -DCMAKE_BUILD_TYPE=RELEASE \
    -DENABLE_CLI=OFF \
    -DENABLE_BITCODE=NO \
    -DDEPLOYMENT_TARGET=9.0 \
    # -DENABLE_SHARED=OFF 
    # -DCMAKE_XCODE_ATTRIBUTE_DEVELOPMENT_TEAM=7J5XWXBPXY \

pushd ios_build
make -j4
popd


# use xcode -G Xcode -T "buildsystem=1"
# cmake --build ios_build --config Release