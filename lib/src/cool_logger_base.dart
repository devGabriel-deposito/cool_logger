import 'dart:io';

class CoolLogger {
  static Future<void> info(info) async {
    String date = _getDateTime();

    String runtimeType = "\n    runtimeType...: ${info.runtimeType.toString()}";
    String content = "\n    content.......: ${info.toString()} \n\n";

    String c = "$date $runtimeType $content";

    await File('dart.log').writeAsString(c, mode: FileMode.append);
  }

  static String _getDateTime() {
    return '[${DateTime.now().toString().split('.')[0]}] ';
  }
}
