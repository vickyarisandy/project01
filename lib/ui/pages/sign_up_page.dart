import 'package:flutter/material.dart';
import 'package:project01/ui/widgets/buttons.dart';
import 'package:project01/ui/widgets/forms.dart';

import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget{
  const SignUpPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets.img_logo_light.png',
                  ),
              ),
            ),
          ),
          Text(
            'Bergabung \n terimakasih',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormField(
                    title: 'Full name'
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                    title: 'Email'
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                    title: 'password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                    title: 'Selanjutnya',
                    onPressed: (){},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
              title: 'Sign in',
              onPressed: (){

              },
          ),
        ],
      ),
    );
  }
}