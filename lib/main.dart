import 'package:flutter/material.dart';
import 'package:project01/ui/pages/home_page.dart';
import 'package:project01/ui/pages/onboarding_page.dart';
import 'package:project01/ui/pages/profile_page.dart';
import 'package:project01/ui/pages/sign_in_page.dart';
import 'package:project01/ui/pages/sign_up_page.dart';
import 'package:project01/ui/pages/sign_up_set_ktp_page.dart';
import 'package:project01/ui/pages/sign_up_set_profile_page.dart';
import 'package:project01/ui/pages/sign_up_success_page.dart';
import 'package:project01/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/on-boarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-ktp': (context) => const SignUpSetKtpPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
      },
      // home: SplashPage(),
    );
  }
}
