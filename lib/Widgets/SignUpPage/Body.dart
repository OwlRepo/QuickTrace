import 'package:flutter/material.dart';
import 'package:quicktrace/Widgets/Popups/CreateNewAccountQRCode.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ContainerResponsive(
      heightResponsive: true,
      widthResponsive: true,
      padding: EdgeInsetsResponsive.only(
        left: 30.0,
        right: 30.0,
        top: 150.0,
        bottom: 300.0,
      ),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 9,
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 5.0,
                child: ContainerResponsive(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ContainerResponsive(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(64, 64, 64, 1),
                          ),
                          child: Center(
                            child: TextResponsive(
                              'Basic information',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SanFranciscoBold',
                                fontSize: 35.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: ContainerResponsive(
                          padding: EdgeInsetsResponsive.only(
                            left: 60.0,
                            right: 60.0,
                            top: 10.0,
                            bottom: 90.0,
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
            SizedBoxResponsive(
              height: 25.0,
            ),
            Expanded(
              flex: 1,
              child: ContainerResponsive(
                child: RaisedButtonResponsive(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color.fromRGBO(226, 53, 53, 1),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        content: CreateNewAccountQRCode(),
                      ),
                    );
                  },
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
