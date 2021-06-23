import 'package:tdlib_ffi_poc/api/basics.dart';
import 'package:tdlib_ffi_poc/api/objects.dart';

Map<String, dynamic> externalSerialize(TlObject obj) => {
  "@type": pascalToCamelCase(obj.tdType),
  ...obj.params.map((key, value) =>
      MapEntry(key, value is TlObject ? externalSerialize(value) : value))
};

String pascalToCamelCase(String string) {
  return string.replaceFirst(string[0], string[0].toLowerCase());
}

class UnconvertableObjectException implements Exception {
  String cause;
  UnconvertableObjectException(this.cause);
}

List<T> castList<T>(List<dynamic> lst) => lst.map((e) => e as T).toList();