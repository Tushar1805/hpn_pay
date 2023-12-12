import 'package:intl/intl.dart';

class DateFormatter {
  static String? yearMonthDate(DateTime? dateTime) {
    List<String> monthName = [
      "",
      "jan",
      "feb",
      "Mar",
      "Apr",
      "May",
      "jun",
      "jul",
      "Aug",
      "sep",
      "Oct",
      "Nov",
      "dec"
    ];

    return "${dateTime!.day} ${monthName[dateTime.month]} ${dateTime.year}";
  }

  static String? timeHHMMA(DateTime dateTime) {
    String? time = DateFormat('d MMMM, y hh:mm a').format(
        DateTime.fromMillisecondsSinceEpoch(dateTime.millisecondsSinceEpoch));
    return time;
  }
  static  DateTime parseIsoString(String isoString) {
    // Check if the input string is valid
    if (DateTime.tryParse(isoString) == null) {
      throw ArgumentError('Invalid ISO string: $isoString');
    }

    // Parse the input string into a DateTime object
    return DateTime.parse(isoString);
  }

  String recentTime(DateTime? time) {
    DateTime? dateAndTime = DateTime.fromMillisecondsSinceEpoch(
        time?.millisecondsSinceEpoch ?? 1000);
    DateTime nowTime = DateTime.now();
    if (nowTime.difference(dateAndTime).inSeconds < 60) {
      return "${nowTime.difference(dateAndTime).inSeconds} seconds ago";
    } else if (nowTime.difference(dateAndTime).inMinutes < 60) {
      return "${nowTime.difference(dateAndTime).inMinutes} minute ago";
    } else if (nowTime.difference(dateAndTime).inDays == 0) {
      return DateFormat('hh:mm a').format(dateAndTime);
    } else {
      return yearMonthDate(dateAndTime) ?? "";
    }
  }
}