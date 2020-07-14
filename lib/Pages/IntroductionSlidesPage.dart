import 'package:flutter/material.dart';
import 'package:quicktrace/Widgets/IntroductionsSlidesPage/Body.dart';
import 'package:quicktrace/Widgets/IntroductionsSlidesPage/Footer.dart';

class IntroductionSlidesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Body(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
