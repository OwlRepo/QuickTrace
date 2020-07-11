import 'package:flutter/material.dart';
import 'package:quicktrace/Pages/HomePage.dart';

class AccountActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
        bottom: 40.0,
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 30.0,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'SanFranciscoBold',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(64, 64, 64, 1),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 40.0,
                    right: 40.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              fontFamily: 'SanFranciscoRegular',
                            ),
                            prefixIcon: Icon(Icons.person),
                          ),
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontFamily: 'SanFranciscoRegular',
                            ),
                            prefixIcon: Icon(Icons.lock),
                          ),
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  color: Color.fromRGBO(226, 53, 53, 1),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SanFranciscoRegular',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
