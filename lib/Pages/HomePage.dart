import 'package:flutter/material.dart';
import 'package:quicktrace/Widgets/HomePage/Body.dart';
import 'package:quicktrace/Widgets/HomePage/Headers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}

class Header {}
