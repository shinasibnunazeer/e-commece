

import 'package:logger/web.dart';

class LoggerHelper {
  static final Logger _logger =
      Logger(printer: PrettyPrinter(), level: Level.debug);

  static void debug(String message) {
    _logger.d(message);
  }

  //info log
  static void info(String message) {
    _logger.i(message);
  }

  //error log
  static void error(String message, [dynamic error, ]) {
    _logger.e(message, error:  error, stackTrace: StackTrace.current);
  }

  //warning log
  static void warning(String message) {
    _logger.w(message);
  }

  //verbose log

}