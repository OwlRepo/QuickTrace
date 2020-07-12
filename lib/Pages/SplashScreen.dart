import 'package:flutter/material.dart';
import 'package:quicktrace/Pages/LoginPage.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

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

    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ContainerResponsive(
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
