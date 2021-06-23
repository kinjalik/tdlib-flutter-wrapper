#import "TdlibFfiPocPlugin.h"
#if __has_include(<tdlib_ffi_poc/tdlib_ffi_poc-Swift.h>)
#import <tdlib_ffi_poc/tdlib_ffi_poc-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "tdlib_ffi_poc-Swift.h"
#endif

@implementation TdlibFfiPocPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTdlibFfiPocPlugin registerWithRegistrar:registrar];
}
@end
