# tdlib_ffi_poc

Proof of concept tdlib on flutter through ffi

## Generate structures
Run consequently:
- `codegen/lib/api_scraping.dart` --- download actual Telegram Typed Language Schema, applied in last version of tdlib, and parse it into comfortable format
- `codegen/lib/tdlib_generator.dart` --- generate Dart declarations of tdlib's objects and functions (which all are, basically, classes)

## Example
In folder `example` provided empty application, which implements basic authorization to Telegram using tdlib's API.

## Notice
- To use precompiled binaries in iOS, you have to add `.dylib` file into `.xcworkspace` using XCode, and add it to linking sequence

