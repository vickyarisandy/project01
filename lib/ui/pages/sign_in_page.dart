import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';

class SignInPage extends StatelessWidget{
  const SignInPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Lupa Password',
                      style: blueTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                      title: 'Sign in',
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
                title: 'buat akun',
              onPressed: () {
                  Navigator.pushNamed(context, 'sign-up');
              },
            ),
          ],
        ),
    );
  }

}