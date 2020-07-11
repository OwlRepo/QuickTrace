import 'package:flutter/material.dart';
import 'package:quicktrace/Pages/SignUpPage.dart';

class AccountOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: FlatButton(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              color: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              child: Text('Forgot Password?'),
            ),
          ),
          Expanded(
            flex: 5,
            child: FlatButton(
              onPressed: () {},
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              color: Colors.transparent,
              highlightColor: Colors.transparent,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                ),
                child: Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromRGBO(64, 64, 64, 1),
                        Color.fromRGBO(226, 53, 53, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SanFranciscoRegular',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
