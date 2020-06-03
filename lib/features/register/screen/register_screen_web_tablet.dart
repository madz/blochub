import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blochub/shared/constants/app_constants.dart';
import 'package:blochub/shared/constants/app_size_config.dart';

import '../widgets/register_form.dart';

///Register Screen
class RegisterScreenWebTablet extends StatelessWidget {
  ///create a register screen

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            appSizeConfig.safeBlockHorizontal * 10,
            appSizeConfig.safeBlockHorizontal * 5,
            appSizeConfig.safeBlockHorizontal * 10,
            0.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign up',
                  style: GoogleFonts.montserrat(
                    color: AppConstants.mainColor,
                    fontSize: 30.0,
                  ),
                ),
              ),
              SizedBox(
                child: RegisterForm(),
                width: 250.0,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
