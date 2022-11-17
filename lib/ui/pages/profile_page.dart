import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';
import 'package:project01/ui/widgets/profil_menu_item.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        title: Text(
          'Profil Saya',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
        ),
        ),
      ),
      body: ListView(
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
                  onTap: (){},
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_pin.png',
                  title: 'My pin',
                  onTap: (){},
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_wallet.png',
                  title: 'Wallet Setting',
                  onTap: (){},
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_reward.png',
                  title: 'My Rewards',
                  onTap: (){},
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_help.png',
                  title: 'Help Center',
                  onTap: (){},
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_logout.png',
                  title: 'Log Out',
                  onTap: (){},
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 87,
          ),
          CustomFilledButton(
              title: 'Report Problem',
            onPressed: (){

            },
          ),
          const SizedBox(
            width: 50,
          ),
        ],
      ),
    );
  }
}