import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';

class Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9,
      width: 9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyColors.magicMint,
      ),
    );
  }
}
