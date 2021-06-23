FROM androidsdk/android-30:latest

# Install NDK
RUN cd /opt/android-sdk-linux && wget -q https://dl.google.com/android/repository/android-ndk-r21e-linux-x86_64.zip && unzip android-ndk-r21e-linux-x86_64.zip && rm android-ndk-r21e-linux-x86_64.zip && mv android-ndk-r21e ndk-bundle

# Install make tools
RUN apt-get update && apt-get install -y cmake ninja-build g++ gperf
