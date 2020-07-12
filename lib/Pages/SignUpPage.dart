import 'package:flutter/material.dart';
import 'package:quicktrace/Widgets/SignUpPage/Body.dart';
import 'package:quicktrace/Widgets/SignUpPage/Headers.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: ContainerResponsive(
            heightResponsive: true,
            widthResponsive: true,
            height: 1920,
            width: 1080,
            padding: EdgeInsetsResponsive.only(
              left: 30.0,
              right: 30.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Headers(),
                ),
                Expanded(
                  flex: 9,
                  child: Body(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
