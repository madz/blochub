import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'app.dart';
import 'core/di/injector.dart';
import 'simple_bloc_delegate.dart';

void main() async {
  String env = Environment.prod;
  // Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();
  // Register all the models and services before the app starts
  configureInjection(env);

  BlocSupervisor.delegate = SimpleBlocDelegate();

  print('Environment =  $env');

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(App(
    env: env,
  ));
}
