import 'package:intl/intl.dart';

class IntDt {
  static String fetchCurrentDate() {
    final now = DateTime.now();
    final dateFormatter = DateFormat('MMMM d, yyyy');
    return dateFormatter.format(now);
  }

  static String fetchCurrentTime() {
    final now = DateTime.now();
    final timeFormatter = DateFormat('h:mm a');
    return timeFormatter.format(now);
  }

  static String fetchCurrentDay() {
    final now = DateTime.now();
    final dayFormatter = DateFormat('EEEE');
    return dayFormatter.format(now);
  }
}
