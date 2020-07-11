import 'package:flutter/material.dart';

class BasicInformationProvider with ChangeNotifier {
  String name = 'Loading...', address = 'Loading...', contactNo = 'Loading...';

  Future<String> requestUserInformation() async {}
}
