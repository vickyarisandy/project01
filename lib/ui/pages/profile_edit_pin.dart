import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project01/blocs/auth/auth_bloc.dart';
import 'package:project01/shared/shared_method.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';
import 'package:project01/ui/widgets/forms.dart';

class ProfileEditPin extends StatefulWidget {
  const ProfileEditPin({Key? key}) : super(key: key);

  @override
  State<ProfileEditPin> createState() => _ProfileEditPinState();
}

class _ProfileEditPinState extends State<ProfileEditPin> {

  final oldPinController = TextEditingController(text: '');
  final newPinController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Edit Pin'
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
           if(state is AuthFailed){
             showCustomSnackbar(context, state.e);
           }

           if(state is AuthSuccess){
             Navigator.pushNamedAndRemoveUntil(context, '/profile-edit-success', (route) => false);
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
                      title: 'Old Pin',
                      obscureText: true,
                      controller: oldPinController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      title: 'New Pin',
                      obscureText: true,
                      controller: newPinController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomFilledButton(
                      title: 'Update now',
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthUpdatePin(oldPinController.text,newPinController.text,),);
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}