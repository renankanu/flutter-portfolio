import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget body;
  final double maxWidth;

  const BaseContainer({
    Key key,
    this.body,
    this.maxWidth = 960,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 64),
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: body,
    );
  }
}
