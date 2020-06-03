import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import 'register_screen_mobile.dart';
import 'register_screen_web_tablet.dart';

///Register Screen
class RegisterScreen extends StatelessWidget {
  ///create a register screen

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || MediaQuery.of(context).size.width > 600) {
      return RegisterScreenWebTablet();
    } else {
      return RegisterScreenMobile();
    }
  }
}
