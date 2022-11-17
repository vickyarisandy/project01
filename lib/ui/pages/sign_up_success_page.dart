import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';

class SignUpSuccessPage extends StatelessWidget{
  const SignUpSuccessPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
                'test',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: 183,
                title: 'Mulai',
              onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}