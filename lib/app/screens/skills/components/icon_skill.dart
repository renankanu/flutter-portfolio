import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';

class IconSkill extends StatelessWidget {
  final String icon;
  final String label;

  const IconSkill({Key key, this.icon, this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 240,
      decoration: BoxDecoration(
        color: MyColors.menu.withOpacity(0.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 80,
          ),
          SizedBox(height: 20),
          Text(
            label,
            style: TextStyle(
                fontFamily: 'FiraCode',
                fontSize: 18,
                color: MyColors.white,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
