import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class DTRToQRCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ContainerResponsive(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      widthResponsive: true,
      heightResponsive: true,
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 5.0,
            child: Padding(
              padding: EdgeInsetsResponsive.all(50.0),
              child: PrettyQr(
                roundEdges: true,
                typeNumber: 2,
                size: 200.0,
                elementColor: Color.fromRGBO(64, 64, 64, 1),
                data: 'Try',
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            child: ContainerResponsive(
              child: TextResponsive(
                'Let the gateway device scan this QRCode first\nbefore you proceed.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'SanFranciscoRegular',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -90.0,
            child: ContainerResponsive(
              heightResponsive: true,
              height: 100.0,
              widthResponsive: true,
              width: 500.0,
              margin: EdgeInsetsResponsive.only(
                top: 100.0,
              ),
              child: RaisedButtonResponsive(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color.fromRGBO(226, 53, 53, 1),
                child: TextResponsive(
                  'Close',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SanFranciscoRegular',
                    fontSize: 30.0,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
