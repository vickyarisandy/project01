import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project01/blocs/auth/auth_bloc.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/pages/onboarding_page.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
          if(state is AuthSuccess){
            Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
          }

          if(state is AuthFailed){
            Navigator.pushNamedAndRemoveUntil(context, '/on-boarding', (route) => false);
          }

        },
        child: Center(
          child: Container(
            width: 155,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/img_logo.png'
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}