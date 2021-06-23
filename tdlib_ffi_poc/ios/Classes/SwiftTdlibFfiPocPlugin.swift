import Flutter
import UIKit

public class SwiftTdlibFfiPocPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "tdlib_ffi_poc", binaryMessenger: registrar.messenger())
    let instance = SwiftTdlibFfiPocPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
