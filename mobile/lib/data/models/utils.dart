import 'package:intl/intl.dart';

DateTime dateTimeFromString(String dateTimeString) {
  return DateFormat('yyyy-MM-dd HH:mm').parse(dateTimeString);
}

DateTime dateFromString(String dateString) {
  return DateFormat('yyyy-MM-dd').parse(dateString);
}
