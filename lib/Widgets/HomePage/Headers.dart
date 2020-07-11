import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 55.0,
              height: 50.0,
              child: GestureDetector(
                onTap: () {
                  print('Drawer Clicked');
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 5.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    height: 5.0,
                    width: 5.0,
                    color: Colors.transparent,
                    padding: EdgeInsets.all(13.0),
                    child: Image.asset(
                      'assets/Images/Menu.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Guide Clicked');
              },
              child: Image.asset(
                'assets/Images/LogoOnly.png',
                fit: BoxFit.contain,
                height: 40.0,
                width: 50.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
