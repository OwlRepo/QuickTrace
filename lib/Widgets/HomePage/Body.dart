import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:quicktrace/Models/TimeAndDateModel.dart';
import 'package:quicktrace/Providers/TimeRecordProvider.dart';
import 'package:quicktrace/Widgets/Popups/DTRToQRCode.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dateTimeProvider = Provider.of<TimeRecordProvider>(context);

    Timer.periodic(Duration(seconds: 1), (timer) {
      List<TimeAndDateModel> setTimeAndDateInfo = [
        TimeAndDateModel(
          time: DateFormat.jm().format(DateTime.now()).toString(),
          date: DateFormat.yMMMMd().format(DateTime.now()).toString(),
        ),
      ];
      dateTimeProvider.dateTimeInfo = setTimeAndDateInfo;
    });

    List<Card> bodyItems = [
      Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ContainerResponsive(
              height: 95.0,
              heightResponsive: true,
              color: Color.fromRGBO(64, 64, 64, 1),
              child: Center(
                child: TextResponsive(
                  'Basic information',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SanFranciscoBold',
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ContainerResponsive(
              height: 500.0,
              heightResponsive: true,
              color: Colors.white,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ContainerResponsive(
                      padding: EdgeInsetsResponsive.only(
                        top: 120.0,
                        bottom: 120.0,
                        left: 40.0,
                        right: 40.0,
                      ),
                      width: 400.0,
                      widthResponsive: true,
                      child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          child: Image.asset(
                            'assets/Images/ProfilePic.jpg',
                            fit: BoxFit.cover,
                            isAntiAlias: true,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    ContainerResponsive(
                      width: 530,
                      widthResponsive: true,
                      decoration: BoxDecoration(),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Romeo D. Angeles Jr.\n\n',
                                style: TextStyle(
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontFamily: 'SanFranciscoBold',
                                  letterSpacing: 1.0,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Systems Developer \n\n',
                                style: TextStyle(
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontFamily: 'SanFranciscoRegular',
                                  letterSpacing: 1.0,
                                  fontSize: 10.0,
                                ),
                              ),
                              TextSpan(
                                text: '+639179742494',
                                style: TextStyle(
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontFamily: 'SanFranciscoRegular',
                                  letterSpacing: 1.0,
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: ContainerResponsive(
          height: 595.0,
          heightResponsive: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 8,
                child: ContainerResponsive(
                  heightResponsive: true,
                  widthResponsive: true,
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.centerRight,
                    overflow: Overflow.clip,
                    children: [
                      Image.asset(
                        'assets/Images/DayBG.png',
                      ),
                      Positioned(
                        top: 50,
                        left: 20,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    '${dateTimeProvider.dateTimeInfo[0].time}\n\n',
                                style: TextStyle(
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontFamily: 'SanFranciscoBold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '${dateTimeProvider.dateTimeInfo[0].date}\n\n',
                                style: TextStyle(
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontFamily: 'SanFranciscoBold',
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: RaisedButtonResponsive(
                  elevation: 0.0,
                  color: Color.fromRGBO(226, 53, 53, 1),
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        content: DTRToQRCode(),
                      ),
                    );
                  },
                  child: Text(
                    'TIME IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SanFranciscoBold',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ContainerResponsive(
      padding: EdgeInsetsResponsive.only(
        left: 40.0,
        right: 40.0,
        top: 50.0,
      ),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: bodyItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 30.0),
            child: bodyItems[index],
          );
        },
      ),
    );
  }
}
