import 'package:flutter/material.dart';
import 'package:quicktrace/Pages/LoginPage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pop();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
        child: Image.asset(
          'assets/Images/LogoName.png',
          fit: BoxFit.contain,
          height: 250.0,
          width: 250.0,
        ),
      ),
    );
  }
}
