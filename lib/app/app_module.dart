import 'package:flutter_modular/flutter_modular.dart';
import 'package:port_dart/app/screens/initial/initial_screen.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => InitialScreen()),
  ];
}
