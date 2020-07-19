import 'package:flutter/material.dart';
import 'package:quicktrace/Models/CreateAccountModel.dart';
import 'package:quicktrace/Providers/CreateAccountProvider.dart';
import 'package:quicktrace/Widgets/Popups/CreateNewAccountQRCode.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:provider/provider.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Body extends StatelessWidget {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );

    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: 'Password is required'),
      MinLengthValidator(8,
          errorText: 'Password must be at least 8 characters long'),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
          errorText: 'Passwords must have at least one special character')
    ]);

    final createAccountProvider = Provider.of<CreateAccountProvider>(context);
    String fullname, address, contactNo, finalPassword;

    return ContainerResponsive(
      heightResponsive: true,
      widthResponsive: true,
      padding: EdgeInsetsResponsive.only(
        left: 30.0,
        right: 30.0,
        top: 100.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 9,
            child: Form(
              key: formKey,
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
                                enabled: true,
                                onSaved: (newValue) => fullname = newValue,
                                validator: (value) =>
                                    value.isEmpty ? 'Field is empty' : null,
                                decoration: InputDecoration(
                                  labelText: 'Fullname',
                                  labelStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                              TextFormField(
                                onSaved: (newValue) => address = newValue,
                                validator: (value) =>
                                    value.isEmpty ? 'Field is empty' : null,
                                decoration: InputDecoration(
                                  labelText: 'Address',
                                  labelStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  prefixIcon: Icon(Icons.home),
                                ),
                              ),
                              TextFormField(
                                onSaved: (newValue) => contactNo = newValue,
                                keyboardType: TextInputType.number,
                                validator: (value) =>
                                    value.isEmpty ? 'Field is empty' : null,
                                decoration: InputDecoration(
                                  labelText: 'Contact No.',
                                  labelStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  prefixIcon: Icon(Icons.phone_iphone),
                                ),
                              ),
                              TextFormField(
                                onSaved: (newValue) =>
                                    createAccountProvider.newAccountInfo = [
                                  CreateAccountModel(password: newValue)
                                ],
                                onChanged: (value) =>
                                    createAccountProvider.newAccountInfo = [
                                  CreateAccountModel(password: value)
                                ],
                                onFieldSubmitted: (value) =>
                                    createAccountProvider.newAccountInfo = [
                                  CreateAccountModel(password: value)
                                ],
                                obscureText: true,
                                validator: passwordValidator,
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
                                onSaved: (newValue) => finalPassword = newValue,
                                validator: (value) => value.isEmpty
                                    ? null
                                    : MatchValidator(
                                            errorText:
                                                'Password does not match')
                                        .validateMatch(
                                            value,
                                            createAccountProvider
                                                .newAccountInfo[0].password),
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
                  if (formKey.currentState.validate()) {
                    formKey.currentState.save();
                    createAccountProvider.newAccountInfo = [
                      CreateAccountModel(
                          fullname: fullname,
                          address: address,
                          contactNo: contactNo,
                          password: finalPassword),
                    ];

                    showDialog(
                      context: context,
                      barrierColor: Colors.white,
                      builder: (context) => AlertDialog(
                        elevation: 0.0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        content: CreateNewAccountQRCode(),
                      ),
                    );
                  }
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
    );
  }
}
