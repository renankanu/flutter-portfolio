import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/intro/components/actions_terminal.dart';

import '../../../utils/colors.dart';
import '../../../utils/responsive.dart';

class Terminal extends StatelessWidget {
  const Terminal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveWidget.isSmallScreen(context) ? 280 : 580,
      color: MyColors.mako,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ActionsTerminal(),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Kanu ',
                style: TextStyle(
                  fontFamily: 'FiraCode',
                  color: MyColors.texas,
                  fontWeight: FontWeight.w800,
                  fontSize: ResponsiveWidget.isSmallScreen(context) ? 15 : 30,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'in ', style: TextStyle(color: MyColors.white)),
                  TextSpan(
                      text: '~', style: TextStyle(color: MyColors.frenchPass)),
                ],
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '\$ ',
                  style: TextStyle(
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 15 : 30,
                      fontFamily: "FiraCode",
                      color: MyColors.white),
                ),
                TypewriterAnimatedTextKit(
                  speed: Duration(milliseconds: 200),
                  text: [
                    "flutter create renankanu",
                    "cd renankanu",
                    "flutter run -d chrome",
                  ],
                  textStyle: TextStyle(
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 15 : 30,
                      fontFamily: "FiraCode",
                      color: MyColors.white),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
