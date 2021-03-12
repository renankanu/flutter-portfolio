import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc extends BlocBase {
  final _isLoading = BehaviorSubject<bool>();
  Sink<bool> get _isLoadingIn => _isLoading.sink;
  Stream<bool> get isLoading => _isLoading.stream;

  final _message = BehaviorSubject<Locale>();
  Sink<Locale> get _messageIn => _message.sink;
  Stream<Locale> get message => _message.stream;

  void setMessage(Locale message) {
    _messageIn.add(message);
  }

  @override
  void dispose() {
    _isLoading.close();
    _message.close();
    super.dispose();
  }
}
