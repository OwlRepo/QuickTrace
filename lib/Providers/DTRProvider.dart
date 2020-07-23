import 'package:flutter/material.dart';
import 'package:quicktrace/Models/DTRModel.dart';
import 'package:quicktrace/Providers/TimeRecordProvider.dart';

class DTRProvider with ChangeNotifier {
  int _dtrController = 1;

  int get dtrController => _dtrController;

  set dtrController(int value) {
    _dtrController = value;
    notifyListeners();
  }

  TimeRecordProvider timeAndDateProvider;
  List<DTRModel> dtrInformations = [
    DTRModel(
      status: 'Loading...',
      name: 'Loading...',
      address: 'Loading...',
      contactNo: 'Loading...',
      time: 'Loading...',
      date: 'Loading...',
      scannedDevices: null,
    ),
  ];

  Future<List<DTRModel>> generateQRData() async {
    dtrInformations = [
      DTRModel(
        status: 'Loading...',
        name: 'Loading...',
        address: 'Loading...',
        contactNo: 'Loading...',
        time: timeAndDateProvider.dateTimeInfo[0].time,
        date: timeAndDateProvider.dateTimeInfo[0].date,
        scannedDevices: null,
      ),
    ];
  }
}
