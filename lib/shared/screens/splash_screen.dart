import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final _authenticationBloc = getIt<AuthenticationBloc>();
  @override
  Widget build(BuildContext context) {
    executeAfterBuild();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/logo_blochub.png'),
      ),
    );
  }

  Future<void> executeAfterBuild() async {
    Future.delayed(const Duration(seconds: 3), () {
      _authenticationBloc.add(AuthenticationEvent.authCheckRequested());
    });
  }
}
