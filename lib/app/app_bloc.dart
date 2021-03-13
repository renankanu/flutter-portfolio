import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc extends BlocBase {
  final _locale = BehaviorSubject<Locale>();
  Sink<Locale> get _localeIn => _locale.sink;
  Stream<Locale> get locale => _locale.stream;

  void setMessage(Locale message) {
    _localeIn.add(message);
  }

  @override
  void dispose() {
    _locale.close();
    super.dispose();
  }
}
