import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:port_dart/app/screens/intro/components/terminal.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/responsive.dart';

import '../../utils/colors.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({Key key}) : super(key: key);

  @override
  _IntroSectionState createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '<Renan Kanu>',
                  style: TextStyle(
                    fontSize: ResponsiveWidget.isSmallScreen(context)
                        ? 40
                        : ResponsiveWidget.isMediumScreen(context)
                            ? 80
                            : 120,
                    fontWeight: FontWeight.w600,
                    color: MyColors.magicMint,
                  ),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: Text(
                      AppLocalizations.of(context).mobileDeveloper,
                      style: TextStyle(
                        color: MyColors.background,
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
        ],
      ),
    );
  }
}
