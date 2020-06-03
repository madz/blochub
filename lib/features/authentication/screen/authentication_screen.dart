import 'package:blochub/features/authentication/bloc/authentication_bloc.dart';
import 'package:blochub/features/login/screen/login_screen.dart';
import 'package:blochub/features/navigation/screen/navigation_screen.dart';
import 'package:blochub/shared/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Authentication Screen
class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) => state.map(
        initial: (value) => SplashScreen(),
        authenticated: (value) => NavigationScreen(),
        unauthenticated: (value) => LoginScreen(),
      ),
    );
  }
}
