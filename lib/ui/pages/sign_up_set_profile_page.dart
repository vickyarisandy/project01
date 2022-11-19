import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project01/models/sign_up_form_model.dart';
import 'package:project01/shared/shared_method.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/pages/sign_up_set_ktp_page.dart';
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

  bool validate(){
    if(pinController.text.length != 6){
      return false;
    }
    return true;
  }

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
                      image: selectedImage == null ? null :
                      DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(
                          File(selectedImage!.path,),
                        ),
                      ),
                    ),
                    child: selectedImage != null ? null :
                    Center(
                      child: Image.asset(
                        'assets/ic_upload.png',
                        width: 32,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'masukan pin (6 digit)',
                  obscureText: true,
                  controller: pinController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: 'Selanjutnya',
                  onPressed: (){
                    if(validate()){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpSetKtpPage(
                                datas : widget.datas.copyWith(
                                  pin: pinController.text,
                                  profilePicture: selectedImage == null
                                      ? null
                                      : 'data:image/png;base64,' +
                                      base64Encode(
                                        File(selectedImage!.path)
                                            .readAsBytesSync(),
                                  ),
                                ),
                              ),
                          ),
                      );
                    }else{
                      showCustomSnackbar(context, 'PIN harus 6 digit');
                    }
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