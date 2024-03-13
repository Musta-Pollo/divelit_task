extension DateTimeExtension on DateTime {
  // Returns date truncated to a minute
  DateTime get truncateToMinute => DateTime(year, month, day, hour, minute);

  // Print the date in the format "dd.MM.yyyy HH:mm"
  String get formatted =>
      "${day.toString().padLeft(2, '0')}.${month.toString().padLeft(2, '0')}.$year ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
}
