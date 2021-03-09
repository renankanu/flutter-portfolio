import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/utils/colors.dart';

class IconSkill extends StatelessWidget {
  final bool isPng;
  final IconData icon;
  final String iconPng;
  final String label;

  const IconSkill(
      {Key key, this.icon, this.label, this.isPng = false, this.iconPng = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      decoration: BoxDecoration(
        color: MyColors.menu.withOpacity(0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isPng,
              child: Container(
                child: Image.asset(
                  iconPng,
                  height: 80,
                ),
              ),
              replacement: FaIcon(
                icon,
                size: 80,
                color: MyColors.magicMint,
              ),
            ),
            SizedBox(height: 9),
            Text(
              label,
              style: TextStyle(
                  fontSize: 16,
                  color: MyColors.magicMint,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
