import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

import 'core/di/injector.dart';
import 'features/authentication/bloc/authentication_bloc.dart';
import 'features/authentication/screen/authentication_screen.dart';
import 'features/contribute/bloc/contribute_bloc.dart';
import 'features/google_map/bloc/google_map_bloc.dart';
import 'features/login/bloc/login_bloc.dart';
import 'features/navigation/bloc/navigation_bloc.dart';
import 'features/profile/bloc/profile_bloc.dart';
import 'features/register/bloc/register_bloc.dart';

class App extends StatelessWidget {
  final String env;
  App({
    @required this.env,
  });
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        /// Authentication Bloc
        BlocProvider<AuthenticationBloc>(
            create: (BuildContext context) => getIt<AuthenticationBloc>()),

        /// Navigation Bloc
        BlocProvider<NavigationBloc>(
          create: (BuildContext context) => getIt<NavigationBloc>(),
        ),

        /// Register Bloc
        BlocProvider<RegisterBloc>(
          create: (BuildContext context) => getIt<RegisterBloc>(),
        ),

        /// Login Bloc
        BlocProvider<LoginBloc>(
          create: (BuildContext context) => getIt<LoginBloc>(),
        ),

        /// ContributeBloc Bloc
        BlocProvider<ContributeBloc>(
          create: (BuildContext context) => getIt<ContributeBloc>(),
        ),

        /// Profile Bloc
        BlocProvider<ProfileBloc>(
          create: (BuildContext context) => getIt<ProfileBloc>(),
        ),

        /// Google Map Bloc
        BlocProvider<GoogleMapBloc>(
          create: (BuildContext context) => getIt<GoogleMapBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: env == Environment.dev ? true : false,
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: AuthenticationScreen(),
      ),
    );
  }
}
