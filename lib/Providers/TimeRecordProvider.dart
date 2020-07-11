import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeRecordProvider with ChangeNotifier {
  String hours, date;

  Stream<String> getHoursAndDate() async* {
    hours = DateFormat.jm().format(DateTime.now());
    date = DateFormat.yMMMMd().format(DateTime.now()).toString();
    yield hours;
    yield date;
    notifyListeners();
  }
}
