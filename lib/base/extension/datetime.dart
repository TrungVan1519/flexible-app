import 'package:timezone/data/latest.dart';
import 'package:timezone/timezone.dart';
import 'package:intl/intl.dart';

extension IBDateTime on DateTime? {
  DateTime get dateTimeToGMT7 {
    final timezone = getLocation('Asia/Ho_Chi_Minh');

    return TZDateTime.from(this ?? DateTime.now(), timezone);
  }

  DateTime? get removeTimeDate {
    final _year = this?.year;
    final _month = this?.month;
    final _day = this?.day;
    if (this != null && _year != null) {
      return DateTime(_year, _month ?? 1, _day ?? 1, 0, 0, 0, 0, 0);
    }
    return null;
  }

  String toDateString(String format) {
    return DateFormat(format).format(this ?? DateTime.now());
  }
}

extension DateTimeEx on DateTime {
  static DateTime? tryParse(String format, String value) {
    try {
      return DateFormat(format).parse(value);
    } on Exception catch (_) {
      return null;
    }
  }

  // compare GMT+7 date time to local regardless timezone
  int compareToLocal(DateTime local, {bool dateOnly = false}) {
    final gmt7 = local.dateTimeToGMT7;
    DateTime self;
    DateTime compare;

    if (dateOnly) {
      self = DateTime(year, month, day, 0, 0, 0, 0, 0);
      compare = DateTime(gmt7.year, gmt7.month, gmt7.day, 0, 0, 0, 0, 0);
    } else {
      self = DateTime(year, month, day, hour, minute, second, 0, 0);
      compare = DateTime(gmt7.year, gmt7.month, gmt7.day, gmt7.hour,
          gmt7.minute, gmt7.second, 0, 0);
    }

    return self.compareTo(compare);
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month
           && day == other.day;
  }
}

extension DateExt on DateTime {
  DateTime get firstDate => DateTime(year, month, 1);
  DateTime get lastDate => DateTime(year, month, 30);
}
