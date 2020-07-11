import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
        top: 100.0,
        bottom: 200.0,
      ),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 8,
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 5.0,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(64, 64, 64, 1),
                          ),
                          child: Center(
                            child: Text(
                              'Basic information',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SanFranciscoBold',
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 30.0,
                            right: 30.0,
                            top: 10.0,
                            bottom: 30.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Fullname',
                                  labelStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Address',
                                  labelStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  prefixIcon: Icon(Icons.home),
                                ),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Contact No.',
                                  labelStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  prefixIcon: Icon(Icons.phone_iphone),
                                ),
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Re-type password',
                                  labelStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  prefixIcon: Icon(Icons.lock),
                                ),
                                maxLines: 1,
                                enabled: true,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color.fromRGBO(226, 53, 53, 1),
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
