import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/images.dart';

class BackgroundContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        MyImages.background,
        fit: BoxFit.cover,
      ),
    );
  }
}
