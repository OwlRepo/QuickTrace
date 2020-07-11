import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quicktrace/Widgets/LoginPage/AccountActions.dart';
import 'package:quicktrace/Widgets/LoginPage/AccountOptions.dart';
import 'package:quicktrace/Widgets/LoginPage/LogoName.dart';
import 'package:quicktrace/Widgets/LoginPage/Remarks.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: LogoName(),
          ),
          Expanded(
            flex: 7,
            child: AccountActions(),
          ),
          Expanded(
            flex: 1,
            child: AccountOptions(),
          ),
          Expanded(
            flex: 2,
            child: Remarks(),
          ),
        ],
      ),
    );
  }
}
