import 'package:flutter/material.dart';
import 'package:project01/blocs/auth/auth_bloc.dart';
import 'package:project01/models/sign_up_form_model.dart';
import 'package:project01/shared/shared_method.dart';
import 'package:project01/ui/pages/sign_up_set_profile_page.dart';
import 'package:project01/ui/widgets/buttons.dart';
import 'package:project01/ui/widgets/forms.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../shared/theme.dart';

class SignUpPage extends StatefulWidget {


  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool validate() {
    if (nameController.text.isEmpty || emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
          if( state is AuthFailed ){
            showCustomSnackbar(context, state.e);
          }

          if(state is AuthCheckEmailSuccess){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpSetProfilePage(
                  datas: SignupFormModel(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                  ),
                ),
              ),
            );
          }

        },
        builder: (context, state) {

          if(state is AuthLoading){
            return const Center(child: CircularProgressIndicator(),);
          }

          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            children: [
              Container(
                width: 255,
                height: 100,
                margin: const EdgeInsets.only(
                  top: 50,
                  bottom: 70,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/img_logo.png',
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
                    CustomFormField(
                      title: 'Full name',
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      title: 'Email',
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      title: 'password',
                      obscureText: true,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomFilledButton(
                      title: 'Selanjutnya',
                      onPressed: () {
                        if (validate()) {
                          context.read<AuthBloc>().add(AuthCheckEmail(emailController.text));
                        } else {
                          showCustomSnackbar(context,
                              'Maaf, tidak boleh kosong.');
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomTextButton(
                title: 'Sign in',
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          );
        },
      ),
    );
  }
}