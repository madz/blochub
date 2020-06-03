import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///A login button
class LoginButton extends StatelessWidget {
  final VoidCallback _onPressed;

  /// create a login button
  LoginButton({Key key, VoidCallback onPressed})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      color: Color(0XFF28B143),
      onPressed: _onPressed,
      child: Text(
        'Login',
        style: GoogleFonts.montserrat(),
      ),
    );
  }
}
