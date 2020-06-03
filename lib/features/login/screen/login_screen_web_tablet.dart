import 'package:blochub/features/login/widgets/create_account_button.dart';
import 'package:blochub/features/login/widgets/facebook_button.dart';
import 'package:blochub/features/login/widgets/google_button.dart';
import 'package:blochub/features/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blochub/shared/constants/app_size_config.dart';
import 'package:blochub/shared/constants/app_constants.dart';

class LoginScreenWebTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          appSizeConfig.safeBlockHorizontal * 10,
          appSizeConfig.safeBlockHorizontal * 5,
          appSizeConfig.safeBlockHorizontal * 10,
          0.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Image.asset(
                  'assets/logo_blochub.png',
                  colorBlendMode: BlendMode.darken,
                ),
                height: 100,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign in',
                  style: GoogleFonts.montserrat(
                    color: AppConstants.mainColor,
                    fontSize: 30.0,
                  ),
                ),
              ),
              SizedBox(
                child: LoginForm(),
                width: 250,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: GoogleLoginButton(),
                width: 250,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: FacebookLoginButton(),
                width: 250,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'No account yet!?',
                      style: GoogleFonts.montserrat(
                        color: AppConstants.mainColor,
                      ),
                    ),
                    CreateAccountButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
