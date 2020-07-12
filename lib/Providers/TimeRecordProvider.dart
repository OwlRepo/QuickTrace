import 'package:quicktrace/Models/TimeAndDateModel.dart';
import 'package:flutter/material.dart';

class TimeRecordProvider with ChangeNotifier {
  List<TimeAndDateModel> _dateTimeInfo = [
    TimeAndDateModel(time: 'Loading...', date: 'Loading...'),
  ];
  List<TimeAndDateModel> get dateTimeInfo => _dateTimeInfo;

  set dateTimeInfo(List<TimeAndDateModel> value) {
    _dateTimeInfo = value;
    notifyListeners();
  }
}
