import 'package:flutter/cupertino.dart';
import 'package:quicktrace/Models/BluetoothInfoModel.dart';

class DTRModel {
  final String name, address, contactNo, time, date;
  final List<BluetoothInfoModel> scannedDevices;

  DTRModel({
    @required this.name,
    @required this.address,
    @required this.contactNo,
    @required this.time,
    @required this.date,
    @required this.scannedDevices,
  });
}
