import 'package:flutter/material.dart';
import 'package:quicktrace/Widgets/SignUpPage/Body.dart';
import 'package:quicktrace/Widgets/SignUpPage/Headers.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
