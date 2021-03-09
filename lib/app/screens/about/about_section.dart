import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/about/components/about_desc.dart';
import 'package:port_dart/app/screens/about/components/avatar.dart';
import 'package:port_dart/app/screens/components/base_container.dart';
import 'package:port_dart/app/utils/responsive.dart';

import '../../utils/colors.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key key}) : super(key: key);
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  List _isHovering = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sobre mim',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: MyColors.vistaBlue),
            ),
            Container(
              width: 80,
              height: 6,
              color: MyColors.magicMint,
            ),
            SizedBox(height: 80),
            Visibility(
              visible: ResponsiveWidget.isSmallScreen(context),
              child: Column(
                children: [
                  Avatar(),
                  SizedBox(height: 80),
                  AboutDesc(isHovering: _isHovering),
                ],
              ),
              replacement: Row(
                children: [
                  Avatar(),
                  SizedBox(width: 80),
                  Expanded(
                    flex: 2,
                    child: AboutDesc(isHovering: _isHovering),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
