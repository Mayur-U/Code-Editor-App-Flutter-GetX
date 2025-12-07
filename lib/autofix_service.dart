class AutoFixService {
  static String fix(String input) {
    final lines = input.split('\n');
    final fixed = <String>[];

    int indentLevel = 0;

    for (var line in lines) {
      String trimmed = line.trim();

      // Try to fix a missing ')'
      if (trimmed.contains("(") && !trimmed.contains(")")) {
        trimmed = trimmed + ")";
      }

      // Try to fix a missing '}'
      if (trimmed.contains("{") && !trimmed.contains("}")) {
        // Only add } if it looks like a block opener
        if (!trimmed.endsWith("{")) {
          trimmed = trimmed + "}";
        }
      }

      // Decrease indent BEFORE printing line
      if (trimmed.startsWith("}")) {
        indentLevel = (indentLevel - 1).clamp(0, 20);
      }

      // Add missing semicolon
      if (trimmed.isNotEmpty &&
          !trimmed.endsWith(";") &&
          !trimmed.endsWith("{") &&
          !trimmed.endsWith("}")) {
        trimmed += ";";
      }

      // Apply indentation
      final indent = '  ' * indentLevel;
      fixed.add(indent + trimmed);

      // Increase indent AFTER opening brace
      if (trimmed.endsWith("{")) {
        indentLevel++;
      }
    }

    return fixed.join("\n");
  }
}
