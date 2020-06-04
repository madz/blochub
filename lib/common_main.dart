import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/di/injector.dart';
import 'simple_bloc_delegate.dart';

void commonMain(String env) async {
  // Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();
  // Register all the models and services before the app starts
  /// Important!!!! use await keyword for configureDependencies();
  await configureDependencies();

  BlocSupervisor.delegate = SimpleBlocDelegate();

  print('Environment =  $env');

  /// Google fonts license
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  // Set `enableInDevMode` to true to see reports while in debug mode
  // This is only to be used for confirming that reports are being
  // submitted as expected. It is not intended to be used for everyday
  // development.
  Crashlytics.instance.enableInDevMode = true;

  // Pass all uncaught errors from the framework to Crashlytics.
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  runApp(App(
    env: env,
  ));
}
