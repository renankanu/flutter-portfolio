import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:port_dart/app/app_bloc.dart';
import 'package:port_dart/app/components/flags.dart';
import 'package:port_dart/app/screens/home/home_section.dart';
import 'package:port_dart/app/utils/colors.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  final _appBloc = Modular.get<AppBloc>();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Banner(
      message: 'Flutter',
      color: MyColors.vistaBlue,
      location: BannerLocation.topEnd,
      child: Stack(
        children: [
          HomeSection(),
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              right: 6,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Flags(appBloc: _appBloc),
            ),
          ),
        ],
      ),
    ));
  }
}
