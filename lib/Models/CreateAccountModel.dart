import 'package:flutter/cupertino.dart';

class CreateAccountModel {
  String fullname, address, contactNo, password;

  CreateAccountModel({
    this.fullname,
    this.address,
    this.contactNo,
    @required this.password,
  });
}
