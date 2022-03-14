import 'dart:developer';
import 'dart:io';

import 'package:app_peritos/core/http/http_override.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/application.dart';
import 'core/bloc/app_bloc_observer.dart';
import 'core/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await configureDependencies();
  BlocOverrides.runZoned(
    () => runApp(const Application()),
    blocObserver: AppBlocObserver(),
  );
}
