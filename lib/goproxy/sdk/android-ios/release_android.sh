#/bin/bash
VER="v5.3"
rm -rf sdk-android-*.tar.gz
rm -rf android
mkdir android

#android ; jdk,android ndk & android sdk required, install gomobile go1.10 required
#export GOPATH="$HOME/go"
#export GOROOT="/usr/local/go"
#export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
#export ANDROID_HOME="$HOME/Android/Sdk"
#export NDK_ROOT="$HOME/Android/Sdk/ndk-bundle"
#export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$NDK_ROOT:$PATH"
#go get -v golang.org/x/mobile/cmd/gomobile
#gomobile init

gomobile bind -v -target=android -javapkg=snail007 -ldflags="-s -w"
mv proxy.aar android/snail007.goproxy.sdk.aar
mv proxy-sources.jar android/snail007.goproxy.sdk-sources.jar
cp ../README.md android
tar zcfv sdk-android-${VER}.tar.gz android
rm -rf android

echo "done."
