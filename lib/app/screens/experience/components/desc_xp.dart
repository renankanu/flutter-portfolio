import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';

class DescXp extends StatelessWidget {
  final String label;
  const DescXp({
    Key key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: MyColors.white,
        fontSize: 12,
      ),
    );
  }
}
