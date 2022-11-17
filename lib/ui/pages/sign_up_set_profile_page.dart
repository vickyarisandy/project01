import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/forms.dart';

import '../widgets/buttons.dart';

class SignUpSetProfilePage extends StatelessWidget{
  const SignUpSetProfilePage({Key? key}): super(key: key);

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
                image: AssetImage('assetName'),
              ),
            ),
          ),
          Text(
            'verifikasi akun',
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
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormField(title: 'masukan pin',obscureText: true,),
                const SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: 'cont',
                  onPressed: (){},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomFilledButton(
            title: 'skip',
            onPressed: (){
              Navigator.pushNamed(context, '/sign-up-ktp');
            },
          ),
        ],
      ),
    );
  }
}