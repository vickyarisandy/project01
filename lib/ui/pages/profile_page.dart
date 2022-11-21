import 'package:flutter/material.dart';
import 'package:project01/blocs/auth/auth_bloc.dart';
import 'package:project01/shared/shared_method.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';
import 'package:project01/ui/widgets/profil_menu_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Saya',
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
          if(state is AuthFailed){
            showCustomSnackbar(context, state.e);
          }

          if(state is AuthInitial){
            Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
          }
        },
        builder: (context, state) {
          if( state is AuthLoading){
            return const Center(child: CircularProgressIndicator(),);
          }
          return ListView(
            padding: const EdgeInsets.symmetric(
                horizontal: 24
            ),
            children: [
              const SizedBox(
                width: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 22
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/img_profile.png',
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      'nama Lengkap',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    ProfilMenuItem(
                      iconUrl: 'assets/ic_edit_profile.png',
                      title: 'edit profile',
                      onTap: () async {
                        if (await Navigator.pushNamed(context, '/pin') ==
                            true) {
                          Navigator.pushNamed(context, '/profile-edit');
                        }
                      },
                    ),
                    ProfilMenuItem(
                      iconUrl: 'assets/ic_pin.png',
                      title: 'My pin',
                      onTap: () async {
                        if (await Navigator.pushNamed(context, '/pin') ==
                            true) {
                          Navigator.pushNamed(context, '/profile-edit-pin');
                        }
                      },
                    ),
                    ProfilMenuItem(
                      iconUrl: 'assets/ic_wallet.png',
                      title: 'Wallet Setting',
                      onTap: () {},
                    ),
                    ProfilMenuItem(
                      iconUrl: 'assets/ic_reward.png',
                      title: 'My Rewards',
                      onTap: () {},
                    ),
                    ProfilMenuItem(
                      iconUrl: 'assets/ic_help.png',
                      title: 'Help Center',
                      onTap: () {},
                    ),
                    ProfilMenuItem(
                      iconUrl: 'assets/ic_logout.png',
                      title: 'Log Out',
                      onTap: () {
                        context.read<AuthBloc>().add(AuthLogout());
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 87,
              ),
              CustomFilledButton(
                title: 'Report Problem',
                onPressed: () {

                },
              ),
              const SizedBox(
                width: 50,
              ),
            ],
          );
        },
      ),
    );
  }
}