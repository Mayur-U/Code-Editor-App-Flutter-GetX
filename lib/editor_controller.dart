import 'package:get/get.dart';
import 'autofix_service.dart';

class EditorController extends GetxController {
  var code = ''.obs;
  var output = ''.obs;

  void runCode() {
    String text = code.value.trim();

    if (text.isEmpty) {
      output.value = "No code to run.";
      return;
    }

    if (text.contains("(") && !text.contains(")")) {
      output.value = "Syntax error: missing ')'";
      return;
    }

    if (text.contains("{") && !text.contains("}")) {
      output.value = "Syntax error: missing '}'";
      return;
    }

    if (text.contains("error")) {
      output.value = "Simulated error detected.";
      return;
    }

    final regex = RegExp(r"""print\((["'])(.*?)\1\)""");
    final match = regex.firstMatch(text);
    if (match != null) {
      output.value = match.group(2) ?? "";
      return;
    }

    output.value = "Program executed successfully.";
  }

  void autoFix() {
    code.value = AutoFixService.fix(code.value);
  }
}
