import 'package:blochub/common_main.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'app.dart';
import 'core/di/injector.dart';
import 'simple_bloc_delegate.dart';

void main() async {
  String env = Environment.dev;

  commonMain(env);
}
