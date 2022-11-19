import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project01/models/sign_up_form_model.dart';
import 'package:project01/shared/shared_method.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/forms.dart';

import '../widgets/buttons.dart';

class SignUpSetProfilePage extends StatefulWidget{


  final SignupFormModel datas;

  const SignUpSetProfilePage({Key? key, required this.datas, }): super(key: key);

  @override
  State<SignUpSetProfilePage> createState() => _SignUpSetProfilePageState();
}

class _SignUpSetProfilePageState extends State<SignUpSetProfilePage> {

  final pinController = TextEditingController(text: '');
  XFile? selectedImage;
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
                image: AssetImage('assets/img_profile.png'),
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
                GestureDetector(
                  onTap: () async{
                    final image = await selectImage();
                    setState(() {
                      selectedImage = image;
                    });
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightBackgroundColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/ic_upload.png',
                        width: 32,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/img_profile.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'masukan pin',
                  obscureText: true,
                  controller: pinController,
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: 'Selanjutnya',
                  onPressed: (){
                    Navigator.pushNamed(context, '/sign-up-ktp');
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomTextButton(
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