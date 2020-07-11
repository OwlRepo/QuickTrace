import 'package:flutter/material.dart';

class LogoName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 60.0,
        bottom: 60.0,
      ),
      child: Image.asset(
        'assets/Images/LogoName.png',
        height: 250.0,
        width: 250.0,
        fit: BoxFit.contain,
      ),
    );
  }
}
