import 'package:flutter/cupertino.dart';

class CreateAccountModel {
  final String fullname, addresss, contactNo, password;

  CreateAccountModel({
    @required this.fullname,
    @required this.addresss,
    @required this.contactNo,
    @required this.password,
  });
}
