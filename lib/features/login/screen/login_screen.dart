import 'package:blochub/features/login/screen/login_screen_mobile.dart';
import 'package:blochub/features/login/screen/login_screen_web_tablet.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

///Login Screen
class LoginScreen extends StatelessWidget {
  ///create a login screen
  @override
  Widget build(BuildContext context) {
    if (kIsWeb || MediaQuery.of(context).size.width > 600) {
      return LoginScreenWebTablet();
    } else {
      return LoginScreenMobile();
    }
  }
}
