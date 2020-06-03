import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/authentication/bloc/authentication_bloc.dart';
import 'package:blochub/features/profile/bloc/profile_bloc.dart';
import 'package:blochub/features/profile/widgets/facebook_link_button.dart';
import 'package:blochub/features/profile/widgets/google_link_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Profile Screen will be the screen for viewing the user's profile.
class ProfileScreen extends StatelessWidget {
  final _authenticationBloc = getIt<AuthenticationBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.0),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.person_add,
              color: Colors.black87,
            ),
            onPressed: () {
              debugPrint('add friend button');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black87,
              ),
              onPressed: () {
                debugPrint('settings button');
                showBottomSheetSettingsMenu(context);
              },
            ),
          ],
        ),
      ),
      body: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state is ProfileStateError) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text('${state.toString()}'),
                      ),
                      Icon(Icons.error),
                    ],
                  ),
                  backgroundColor: Colors.red,
                ),
              );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GoogleLinkButton(
                  title: 'Link Google',
                  profileEvent: ProfileEvent.linkCredentialsWithGooglePressed(),
                ),
                GoogleLinkButton(
                  title: 'Unlink Google',
                  profileEvent:
                      ProfileEvent.unlinkCredentialsWithGooglePressed(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FacebookLinkButton(
                  title: 'Link Facebook',
                  profileEvent:
                      ProfileEvent.linkCredentialsWithFacebookPressed(),
                ),
                FacebookLinkButton(
                  title: 'Unlink Facebook',
                  profileEvent:
                      ProfileEvent.unlinkCredentialsWithFacebookPressed(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheetSettingsMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  title: Text('Logout'),
                  onTap: () {
                    _authenticationBloc.add(AuthenticationEvent.loggedOut());
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        });
  }
}
