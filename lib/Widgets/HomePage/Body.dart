import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quicktrace/Providers/TimeRecordProvider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dateTimeProvider = Provider.of<TimeRecordProvider>(context);
    dateTimeProvider.getHoursAndDate();
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
            Container(
              height: 35.0,
              color: Color.fromRGBO(64, 64, 64, 1),
              child: Center(
                child: Text(
                  'Basic information',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SanFranciscoBold',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 180.0,
              color: Colors.white,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 25.0,
                        bottom: 25.0,
                        left: 10.0,
                        right: 10.0,
                      ),
                      width: 150.0,
                      child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
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
                    Container(
                      width: 180,
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
        child: Container(
          height: 215.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.centerRight,
                    overflow: Overflow.clip,
                    children: [
                      Image.asset(
                        'assets/Images/DayBG.png',
                      ),
                      Positioned(
                        left: 20,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${dateTimeProvider.hours}\n\n',
                                style: TextStyle(
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontFamily: 'SanFranciscoBold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0,
                                ),
                              ),
                              TextSpan(
                                text: '${dateTimeProvider.date}\n',
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
                child: FlatButton(
                  color: Color.fromRGBO(226, 53, 53, 1),
                  onPressed: () {},
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

    return Container(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
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
