import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String formatDateTime() {
    final formatter = DateFormat("MMMM d, y 'at' HH:mm");
    return formatter.format(this);
  }
}
