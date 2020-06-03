import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/profile/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:blochub/shared/constants/app_constants.dart';

class GoogleLinkButton extends StatelessWidget {
  final String title;
  final ProfileEvent profileEvent;

  GoogleLinkButton({this.title, this.profileEvent});
  final _bloc = getIt<ProfileBloc>();
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('$title'),
      color: AppConstants.googleColor,
      onPressed: () {
        _bloc.add(profileEvent);
      },
    );
  }
}
