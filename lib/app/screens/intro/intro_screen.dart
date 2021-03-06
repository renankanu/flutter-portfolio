import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/responsive.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[MyColors.magicMint, Color(0xffffffff)],
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Desenvolvedor Mobile',
                  style: TextStyle(
                    color: MyColors.background,
                    fontFamily: 'FiraCode',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              color: MyColors.magicMint,
            ),
            SizedBox(height: 60),
            TypewriterAnimatedTextKit(
              speed: Duration(milliseconds: 200),
              text: [
                "Discipline is the best tool ",
                "Design first, then code",
                "Do not patch bugs out, rewrite them",
                "Do not test bugs out, design them out",
              ],
              textStyle: TextStyle(
                  fontSize: ResponsiveWidget.isSmallScreen(context) ? 15 : 30,
                  fontFamily: "FiraCode",
                  color: MyColors.white),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
