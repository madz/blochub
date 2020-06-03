import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/navigation/bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';

///inbox screen
class InboxScreen extends StatelessWidget {
  // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  @override
  Widget build(BuildContext context) {
    // _firebaseMessaging.configure(
    //   onMessage: (Map<String, dynamic> message) async {
    //     print("onMessage: $message");
    //     showNotification(context, 'onMessage', message);
    //   },
    //   onLaunch: (Map<String, dynamic> message) async {
    //     print("onLaunch: $message");
    //     showNotification(context, 'onLaunch', message);
    //   },
    //   onResume: (Map<String, dynamic> message) async {
    //     print("onResume: $message");
    //   },
    // );
    return Center(
      child: Center(
        child: RaisedButton(
          child: Text('Go to Profile'),
          onPressed: () {
            getIt<NavigationBloc>().add(NavigationEvent.profile());
          },
        ),
      ),
    );
  }

  void showNotification(
      BuildContext context, String name, Map<String, dynamic> message) {
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$name = $message'),
            ],
          ),
        ),
      );
  }
}
