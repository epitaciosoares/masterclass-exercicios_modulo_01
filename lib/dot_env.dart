import 'dart:io';

class DotEnv {
  final String filePath;
  final Map<String, dynamic> _data = {};

  DotEnv(this.filePath) {
    _load();
  }

  void _load() {
    final file = File(filePath);
    if (!file.existsSync()) {
      throw FileSystemException("File not found", filePath);
    }

    for (var line in file.readAsLinesSync()) {
      line = line.trim();
      if (line.isEmpty || line.startsWith("#")) {
        continue;
      }
      final parts = line.split("=");
      if (parts.length < 2) continue;
      final key = parts[0].trim();
      final value = _cast(parts.sublist(1).join("=").trim());
      _data[key] = value;
    }
  }

  dynamic _cast(String value) {
    if (value.toLowerCase() == "true" || value.toLowerCase() == "false") {
      return value.toLowerCase() == "true";
    }
    if (int.tryParse(value) != null) {
      return int.parse(value);
    }
    if (double.tryParse(value) != null) {
      return double.parse(value);
    }
    return value.replaceAll('"', '');
  }

  dynamic get(String key, {dynamic defaultValue}) {
    return _data[key] ?? defaultValue;
  }
}
