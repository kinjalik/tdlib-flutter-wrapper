import "dart:convert" show json;
import "dart:io" as io;
import "package:http/http.dart";
import "utils.dart";

/// Parses a line of Telegram's Typed Language (TL) schema language
/// It's basically a language for describing functions and class constructors,
/// and it's how the TDLib classes and functions are documented.
///
/// Looks something like this:
/// combinatorName field1:Type1 field2:Type2 ... = ReturnType
///
/// Returns a map entry for the class'/function's fields and stuff
MapEntry<String, Map> parseTlLine(String line, String comment) {
  final combinatorAndType = line.split("=");
  final combinatorWithFields = combinatorAndType[0].split(" ");
  final combinatorName = combinatorWithFields[0];
  final fields = combinatorWithFields.getRange(1, combinatorWithFields.length);
  var fieldInfo = <String, String>{};
  for (var field in fields) {
    if (field.isEmpty) continue;
    final fieldAndType = field.trim().split(":");

    var type = tlTypeToDartType(fieldAndType[1].trim());
    if (comment.contains("@${fieldAndType[0]}")) {
      var commentPart = comment.split("@${fieldAndType[0]}")[1].split("@")[0];
      if (commentPart.contains("may be null"))
        type += "?";
    }

    fieldInfo.addAll({fieldAndType[0].trim(): type});
  }

  return MapEntry(combinatorName, {
    "superclass": combinatorAndType[1].trim().replaceAll(";", ""),
    "fields": fieldInfo,
  });
}

String tlTypeToDartType(String tlType) {
  var vector = RegExp(r"vector<(.*)>").firstMatch(tlType);
  if (vector != null) {
    var generic = tlTypeToDartType(vector.group(1) ?? "");
    return "List<$generic>";
  }

  var dartType = tlType;
  switch (tlType) {
    case "int32?":
    case "int53?":
    case "int64?":
      dartType = "int?";
      break;

    case "int32":
    case "int53":
    case "int64":
      dartType = "int";
      break;

    case "bytes?":
      dartType = "String?";
      break;

    case "bytes":
      dartType = "String";
      break;

    case "Bool?":
      dartType = "bool?";
      break;

    case "Bool":
      dartType = "bool";
      break;

    case "double?":
      dartType = "double?";
      break;

    case "double":
      dartType = "double";
      break;

    case "string?":
      dartType = "String?";
      break;

    case "string":
      dartType = "String";
      break;

    default:
      dartType = camelToPascalCase(tlType);
      break;
  }

  return dartType;
}

void main() async {
  final client = Client();
  final apiUrl = "https://raw.githubusercontent.com/tdlib/td/master/td/generate/scheme/td_api.tl";
  final apiIndex = (await client.get(Uri.parse(apiUrl))).body;

  final lines = apiIndex.split("\n");
  Map<String, dynamic> classes = {};
  Map<String, dynamic> functions = {};

  var parseAsFunction = false;
  for (int i = 17; i < lines.length; i++) {
    var line = lines[i];
    if (line.contains("---functions---")) {
      parseAsFunction = true;
      continue;
    } else if (line.contains("---types---")) {
      parseAsFunction = false;
      continue;
    }

    if (line.isEmpty || line.startsWith("//")) continue;

    var combinator = parseTlLine(line, lines[i-1]);;
    if (parseAsFunction) {
      var returnType = combinator.value["superclass"];
      if (!functions.containsKey(returnType)) {
        functions.addAll({returnType: {}});
      }
      (functions[returnType] as Map).addEntries([combinator]);
    } else {
      var superclass = combinator.value["superclass"];
      if (!classes.containsKey(superclass)) {
        classes.addAll({superclass: {}});
      }
      (classes[superclass] as Map).addEntries([combinator]);
    }
  }

  var api = {
    "types": classes,
    "functions": functions,
  };

  var f = io.File('./tl_api.json')
      .openWrite()
      .write(json.encode(api));

  client.close();
}
