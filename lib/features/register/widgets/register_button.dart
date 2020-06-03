import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blochub/shared/constants/app_constants.dart';

/// Button when press will register the user.
class RegisterButton extends StatelessWidget {
  final VoidCallback _onPressed;

  /// Create a register button
  RegisterButton({Key key, VoidCallback onPressed})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      color: AppConstants.mainColor,
      onPressed: _onPressed,
      child: Text(
        'Register',
        style: GoogleFonts.montserrat(),
      ),
    );
  }
}
