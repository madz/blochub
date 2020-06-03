import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blochub/shared/constants/app_constants.dart';

import '../widgets/register_form.dart';

///Register Screen
class RegisterScreenMobile extends StatelessWidget {
  ///create a register screen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: BackButton(
              color: AppConstants.mainColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 0, 50.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                RegisterForm(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
