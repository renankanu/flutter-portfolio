import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/home/home_screen.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Center(
          child: Banner(
        message: 'Flutter',
        color: MyColors.vistaBlue,
        location: BannerLocation.topEnd,
        child: HomeScreen(),
      )),
    );
  }
}
