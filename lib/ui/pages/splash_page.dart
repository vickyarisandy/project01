import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget{
  const SplashPage({Key? key}): super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context, '/on-boarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
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
    );
  }
}