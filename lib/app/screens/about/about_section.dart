import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/screens/about/components/about_desc.dart';
import 'package:port_dart/app/screens/about/components/avatar.dart';
import 'package:port_dart/app/screens/about/components/social_button.dart';
import 'package:port_dart/app/utils/images.dart';
import 'package:port_dart/app/utils/responsive.dart';

import '../../utils/colors.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  List _isHovering = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: 960, minHeight: MediaQuery.of(context).size.height),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Text(
              'Sobre mim -----',
              style: TextStyle(
                  fontFamily: 'FiraCode',
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: MyColors.vistaBlue),
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
