import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:port_dart/app/app_module.dart';
import 'package:port_dart/app/app_widget.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  await DotEnv.load();
  setPathUrlStrategy();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
