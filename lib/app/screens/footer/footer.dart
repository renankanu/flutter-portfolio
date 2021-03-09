import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        padding: EdgeInsets.all(0),
        color: MyColors.mako,
        child: Row(
          children: [],
        ));
  }
}
