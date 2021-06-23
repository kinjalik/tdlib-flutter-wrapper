`download-and-compile.sh` initially was writter for GitLab CI service, but you can use it manually, if you:
1. Provide path too project root as `$CI_PROJECT_DIR`
2. Edit variables `ANDROID_NDK` and `HOST_ARCH` in `third_party/crypto`
3. Set `$ANDROID_SDK_ROOT` correctly
