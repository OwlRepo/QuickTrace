import 'package:flutter/material.dart';
import 'package:quicktrace/Models/CreateAccountModel.dart';

class CreateAccountProvider with ChangeNotifier {
  List<CreateAccountModel> _newAccountInfo;

  List<CreateAccountModel> get newAccountInfo => _newAccountInfo;

  set newAccountInfo(List<CreateAccountModel> values) {
    _newAccountInfo = values;
    notifyListeners();
  }
}
