import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blochub/shared/constants/app_constants.dart';

/// A Google login button
class GoogleLoginButton extends StatelessWidget {
  final _loginBloc = getIt<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      icon: Icon(FontAwesomeIcons.google, color: Colors.white),
      onPressed: () {
        _loginBloc.add(
          LoginEvent.loginWithGooglePressed(),
        );
      },
      label: Text(
        'Sign in with Google',
        style: GoogleFonts.montserrat(color: Colors.white),
      ),
      color: AppConstants.googleColor,
    );
  }
}
