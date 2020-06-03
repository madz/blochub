import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/authentication/bloc/authentication_bloc.dart';
import 'package:blochub/features/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'register_button.dart';

///form for Registering a User.
class RegisterForm extends StatefulWidget {
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _registerBloc = getIt<RegisterBloc>();
  final _authenticationBloc = getIt<AuthenticationBloc>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
    _firstNameController.addListener(_onFirstNameChanged);
    _lastNameController.addListener(_onLastNameChanged);
    _phoneNoController.addListener(_onPhoneNoChanged);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneNoController.dispose();
    super.dispose();
  }

  bool get isPopulated =>
      _emailController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty &&
      _firstNameController.text.isNotEmpty &&
      _lastNameController.text.isNotEmpty &&
      _phoneNoController.text.isNotEmpty;

  bool isRegisterButtonEnabled(RegisterState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  void _onEmailChanged() {
    _registerBloc.add(
      RegisterEvent.emailChanged(email: _emailController.text),
    );
  }

  void _onPasswordChanged() {
    _registerBloc.add(
      RegisterEvent.passwordChanged(password: _passwordController.text),
    );
  }

  void _onFirstNameChanged() {
    _registerBloc.add(
      RegisterEvent.firstNameChanged(firstName: _firstNameController.text),
    );
  }

  void _onLastNameChanged() {
    _registerBloc.add(
      RegisterEvent.lastNameChanged(lastName: _lastNameController.text),
    );
  }

  void _onPhoneNoChanged() {
    _registerBloc.add(
      RegisterEvent.phoneNumberChanged(phoneNumber: _phoneNoController.text),
    );
  }

  void _onFormSubmitted() {
    _registerBloc.add(
      RegisterEvent.submitted(
        email: _emailController.text,
        password: _passwordController.text,
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        phoneNo: _phoneNoController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Registering...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          _authenticationBloc.add(AuthenticationEvent.loggedIn());
          Navigator.of(context).pop();
        }
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text('${state.info}'),
                    ),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  autovalidate: true,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: GoogleFonts.montserrat(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                  validator: (_) {
                    return !state.isEmailValid ? 'Invalid Email' : null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _passwordController,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  autocorrect: false,
                  autovalidate: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.montserrat(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                  validator: (_) {
                    return !state.isPasswordValid ? 'Invalid Password' : null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _firstNameController,
                  textAlign: TextAlign.center,
                  autovalidate: true,
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    hintStyle: GoogleFonts.montserrat(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                  validator: (_) {
                    return !state.isFirstNameValid
                        ? 'Invalid First Name'
                        : null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _lastNameController,
                  textAlign: TextAlign.center,
                  autovalidate: true,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    hintStyle: GoogleFonts.montserrat(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                  validator: (_) {
                    return !state.isLastNameValid ? 'Invalid Last Name' : null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _phoneNoController,
                  textAlign: TextAlign.center,
                  autovalidate: true,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: GoogleFonts.montserrat(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                  validator: (_) {
                    return !state.isPhoneNumberValid
                        ? 'Invalid Phone number'
                        : null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                RegisterButton(
                  onPressed:
                      isRegisterButtonEnabled(state) ? _onFormSubmitted : null,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
