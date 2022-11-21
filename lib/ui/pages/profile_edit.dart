import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';
import 'package:project01/ui/widgets/forms.dart';

class ProfileEdit extends StatefulWidget{
  const ProfileEdit({Key? key}) : super(key:key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final usernameController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Edit Profile'
          ),
        ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
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
                    title: 'Username'
                ),
                const SizedBox(
                  height: 16,
                ),
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
                  title: 'Update now',
                   onPressed: (){
                     Navigator.pushNamedAndRemoveUntil(context, 'profile-edit-success', (route) => false);
                   },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}