import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(top: 30.0),
            child: Text(
              'SIGN UP',
              style: TextStyle(
                color: Color.fromRGBO(226, 53, 53, 1),
                fontSize: 50.0,
                fontFamily: 'SanFranciscoBold',
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
