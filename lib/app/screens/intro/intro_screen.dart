import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/intro/components/terminal.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/responsive.dart';

import '../../utils/colors.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[MyColors.magicMint, MyColors.white],
    ).createShader(Rect.fromLTWH(100.0, 0.0, 600.0, 0.0));
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '<Renan Kanu>',
              style: TextStyle(
                  fontSize: ResponsiveWidget.isSmallScreen(context) ? 40 : 60,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'FiraCode',
                  foreground: Paint()..shader = linearGradient),
            ),
            SizedBox(height: 60),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: MyColors.magicMint,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text(
                  'Desenvolvedor Mobile',
                  style: TextStyle(
                    color: MyColors.background,
                    fontFamily: 'FiraCode',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            Terminal()
          ],
        ),
      ),
    );
  }
}
