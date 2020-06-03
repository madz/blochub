import 'package:blochub/features/register/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///Button Widget for creating an account.
class CreateAccountButton extends StatelessWidget {
  ///create a CreateAccountButton

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      color: Color(0XFF28B143),
      child: Text(
        'Sign up',
        style: GoogleFonts.montserrat(
          color: Colors.white,
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return RegisterScreen();
          }),
        );
      },
    );
  }
}
