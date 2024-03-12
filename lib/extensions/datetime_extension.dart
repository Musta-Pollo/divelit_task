extension DateTimeExtension on DateTime {
  // Returns date truncated to a minute
  DateTime get truncateToMinute => DateTime(year, month, day, hour, minute);
}
