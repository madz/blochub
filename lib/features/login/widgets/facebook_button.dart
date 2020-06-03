import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blochub/shared/constants/app_constants.dart';

/// A Google login button
class FacebookLoginButton extends StatelessWidget {
  final _loginBloc = getIt<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      icon: Icon(FontAwesomeIcons.facebook, color: Colors.white),
      onPressed: () {
        _loginBloc.add(
          LoginEvent.loginWithFacebookPressed(),
        );
      },
      label: Text(
        'Sign in with Facebook',
        style: GoogleFonts.montserrat(color: Colors.white),
      ),
      color: AppConstants.facebookColor,
    );
  }
}
