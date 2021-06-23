import 'package:tdlib_ffi_poc/api/utils.dart';

abstract class TlObject {
  String get tdType;
  Map<String, dynamic> get params;

  Map<String, dynamic> serialize() {
    return externalSerialize(this);
  }
}

abstract class TdObject extends TlObject {
  String get tdType;
}

abstract class TdFunction extends TlObject {
  Type get returnType;
}