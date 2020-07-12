import 'package:flutter/material.dart';
import 'package:quicktrace/Models/DTRModel.dart';
import 'package:quicktrace/Providers/TimeRecordProvider.dart';

class DTRProvider with ChangeNotifier {
  TimeRecordProvider timeAndDateProvider;
  List<DTRModel> dtrInformations = [
    DTRModel(
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
