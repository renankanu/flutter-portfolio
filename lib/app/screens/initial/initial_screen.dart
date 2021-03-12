import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/home/home_section.dart';
import 'package:port_dart/app/utils/colors.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Banner(
      message: 'Flutter',
      color: MyColors.vistaBlue,
      location: BannerLocation.topEnd,
      child: HomeSection(),
    ));
  }
}
