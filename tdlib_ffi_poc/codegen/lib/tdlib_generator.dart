/// dart_tdlib/codegen/tdlib_generator.dart
///
/// Automatically generates classes for TDLib

import 'dart:io';
import 'dart:convert';
import 'utils.dart';

/// Represents a class constructor in the TD API
class ApiClass {
  final String name;
  final String superclass;
  final bool isAbstract;
  final List<ApiParam> members;
  final String extra;

  String get type => isAbstract ? name : pascalToCamelCase(name);

  const ApiClass(this.name,
      this.superclass,
      this.isAbstract,
      this.members,
      this.extra,);

  String toConverter() {
    if (isAbstract)
      return "";
    var res = "";
    res += "    case '${this.type}':\n";
    res += "      return ${this.name}.fromJson(obj);";
    return res;
  }

  // Returns Dart code for this class.
  ///
  /// @reflector
  /// class $name extends $superclass {
  ///   @override
  ///   String get tdType => "$type";
  ///
  ///   ${members[0].type} ${members[0].fieldName};
  ///   ${members[1].type} ${members[1].fieldName};
  ///   ...
  ///
  ///   @override
  ///   Map<String, dynamic> get params => {
  ///     "${members[0].paramName}": "${members[0].fieldName}",
  ///     "${members[1].paramName}": "${members[1].fieldName}",
  ///     ...,
  ///   };
  ///
  ///   $name(Map<String, dynamic> json) {
  ///     ${members[0].fieldName} = tryParse(json["${members[0].paramName}"]);
  ///     ${members[1].fieldName} = tryParse(json["${members[1].paramName}"]);
  ///     ...
  ///   }
  /// }
  String toDart() {
    var buf = StringBuffer();
    if (isAbstract) {
      buf.write('abstract class $name extends $superclass {}\n');
    } else if (members.isEmpty) {
      buf.writeAll([
        'class $name extends $superclass {',
        '  @override',
        '  String get tdType => \'$type\';',
        '',
        '  @override',
        '  Map<String, dynamic> get params => {};',
        '',
        '  $name();',
        '',
        '  $name.fromJson(Map<String, dynamic> json);',
        // Still has params for consistency
        '}',
        '',
      ], '\n');
    } else {
      var res = [
        'class $name extends $superclass {',
        '  @override',
        '  String get tdType => \'$type\';',
        '',
        ...members.map((field) => '  ${field.type} ${field.fieldName};'),
        '',
        '  @override',
        '  Map<String, dynamic> get params => {',
        ...members
            .map((param) => '    \'${param.paramName}\': ${param.fieldName},'),
        '  };',
        '',
        '  $name(',
        ...members.map((field) => '    this.${field.fieldName},'),
        '  );',
        '',
        '  $name.fromJson(Map<String, dynamic> json):',
        ...members.map((field) {
          if (field.type == 'int')
            return '    ${field.fieldName} = json[\'${field.paramName}\'] is int \n'
                     '      ? convertToTdObject(json[\'${field.paramName}\']) \n'
                     '      : int.parse(convertToTdObject(json[\'${field.paramName}\'])),';
          if (field.type.contains("List<")) {
            var templateType = field.type.split("<")[1].split(">")[0];
            return '    ${field.fieldName} = convertToTdObject(castList<$templateType>(json[\'${field.paramName}\'])),';
          }
          return '    ${field.fieldName} = convertToTdObject(json[\'${field.paramName}\']),';
        })
      ].join('\n');
      res = res.substring(0, res.length - 1);
      res += ";\n}\n";
      buf.writeAll([res], '\n');
    }

    return buf.toString();
  }
}

/// Represents a function in the TD API
class ApiFunction {
  final String name;
  final String returnType;
  final List<ApiParam> params;

  const ApiFunction(this.name,
      this.returnType,
      this.params,);

  /// Returns Dart code for this function
  ///
  /// @reflector
  /// class $name extends TdFunction {
  ///   @override
  ///   String get returnType => "$returnType";
  ///
  ///   final ${params[0].type} ${params[0].fieldName};
  ///   final ${params[1].type} ${params[1].fieldName};
  ///   ...
  ///
  ///   @override
  ///   Map<String, dynamic> get params => {
  ///     "${params[0].paramName}": ${param[0].fieldName,
  ///     "${params[1].paramName}": ${param[1].fieldName,
  ///     ...
  ///   }
  ///
  ///   $name(
  ///     this.${params[0].fieldName},
  ///     this.${params[1].fieldName},
  ///     ...
  ///   )
  /// }
  String toDart() {
    var buf = StringBuffer();
    if (params.isEmpty) {
      buf.writeAll([
        'class $name extends TdFunction {',
        '  @override',
        '  Type get returnType => $returnType;',
        '',
        '  @override',
        '  String get tdType => \'${pascalToCamelCase(name)}\';',
        '',
        '  @override',
        '  Map<String, dynamic> get params => {};',
        '',
        '  $name();',
        '',
        '  $name.fromJson(Map<String, dynamic> json);',
        '}',
        '',
      ], '\n');
    } else {
      var res = [
        'class $name extends TdFunction {',
        '  @override',
        '  Type get returnType => $returnType;',
        '',
        '  @override',
        '  String get tdType => \'${pascalToCamelCase(name)}\';',
        '',
        ...params.map((field) => '  ${field.type} ${field.fieldName};'),
        '',
        '  @override',
        '  Map<String, dynamic> get params => {',
        ...params
            .map((param) => '    \'${param.paramName}\': ${param.fieldName},'),
        '  };',
        '',
        '  $name(',
        ...params.map((param) => '    this.${param.fieldName},'),
        '  );',
        '',
        '  $name.fromJson(Map<String, dynamic> json) :',
        ...params.map((param) =>
        '    ${param.fieldName} = convertToTdObject(json[\'${param
            .paramName}\']),'),
      ].join('\n');
      res = res.substring(0, res.length - 1);
      res += [
        ';',
        '}',
        '',
      ].join('\n');

      buf.writeAll([res], '\n');
    }

    return buf.toString();
  }
}

class ApiParam {
  final String type;
  final String paramName;

  String get fieldName => snakeToCamelCase(paramName);

  const ApiParam(this.type, this.paramName);
}

main() async {
  Map<String, dynamic> api = await File("./tl_api.json")
      .openRead()
      .transform(Utf8Decoder())
      .transform(JsonDecoder())
      .first as Map<String, dynamic>;

  var classes = <ApiClass>[];
  var functions = <ApiFunction>[];

  // TODO: Clean up whatever the hell this is, or at least document it
  (api['types'] as Map).forEach((k, v) {
    if ((v as Map).length == 1 &&
        (v as Map).containsKey(pascalToCamelCase(k))) {
      classes.add(ApiClass(
        k,
        'TdObject',
        false,
        (v[pascalToCamelCase(k)]['fields'] as Map)
            .entries
            .map((e) => ApiParam(e.value, e.key))
            .toList(),
        '',
      ));
      return;
    } else {
      classes.add(ApiClass(
        k,
        'TdObject',
        true,
        [],
        '',
      ));
    }

    (v as Map).forEach((k, v) {
      var name = camelToPascalCase(k);
      classes.add(ApiClass(
        name,
        name == v['superclass'] ? 'TdObject' : v['superclass'],
        false,
        (v['fields'] as Map)
            .entries
            .toList()
            .map((e) => ApiParam(e.value, e.key))
            .toList(),
        '',
      ));
    });
  });

  (api['functions'] as Map).forEach((k, v) {
    (v as Map).forEach((k, v) {
      var name = camelToPascalCase(k);
      functions.add(ApiFunction(
        name,
        v['superclass'],
        (v['fields'] as Map)
            .entries
            .toList()
            .map((e) => ApiParam(e.value, e.key))
            .toList(),
      ));
    });
  });

  File('../lib/api/objects.dart').openWrite().writeAll([
    'import \'basics.dart\';',
    'import \'utils.dart\';',
    'import \'converter.dart\';',
    '',
    ...classes.map((c) => c.toDart()),
  ], '\n');

  File('../lib/api/functions.dart').openWrite().writeAll([
    'import \'basics.dart\';',
    'import \'objects.dart\';',
    'import \'utils.dart\';',
    'import \'converter.dart\';',
    '',
    ...functions.map((f) => f.toDart()),
  ], '\n');

  File('../lib/api/converter.dart').openWrite().writeAll([
    'import \'package:tdlib_ffi_poc/api/objects.dart\';',
    'import \'package:tdlib_ffi_poc/api/basics.dart\';',
    'import \'package:tdlib_ffi_poc/api/utils.dart\';\n',
    'dynamic convertToTdObject(dynamic obj) {',
    '  if (!(obj is Map<String, dynamic>) || !obj.containsKey("@type"))',
    '    return obj;\n',
    '  var objTypeName = obj["@type"];',
    '  switch (objTypeName) {',
    ...classes.map((f) => f.toConverter()),
    '    default:',
    '      throw UnconvertableObjectException(objTypeName);',
    '  }',
    '}'
  ], '\n');
}
