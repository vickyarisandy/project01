import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';
import 'package:project01/ui/widgets/forms.dart';
import 'package:project01/ui/widgets/tranfer_result_user_item.dart';
import 'package:project01/ui/widgets/transfer_recent_user_item.dart';

class TransferPage extends StatelessWidget{
  const TransferPage({Key?key}): super(key: key);

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
              'Pencarian',
            style: blackTextStyle.copyWith(
              fontSize:16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
              title: 'By username...',
            isShowTitle: false,
          ),
          buildRecentUser(),
          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
              title: 'continue',
            onPressed: (){
                Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }


  Widget buildRecentUser(){
    return Container(
      margin: const EdgeInsets.only(
          top: 40
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize:16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_friend1.png',
            name: 'nama lengkap',
            username: 'username',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_friend3.png',
            name: 'nama lengkap',
            username: 'username',

          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_friend4.png',
            name: 'nama lengkap',
            username: 'username',
          ),
        ],
      ),
    );
  }

  Widget buildResult(){
    return Container(
      margin: const EdgeInsets.only(
          top: 40
      ),
      child: Column(
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize:16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: const [
               TransferResultUserItem(
                imageUrl: 'assets/img_friend4.png',
                name: 'nama lengkap',
                username: 'username',
                 isVerified: true,
              ),
              TransferResultUserItem(
                imageUrl: 'assets/img_friend2.png',
                name: 'nama lengkap',
                username: 'username',
                isSelected: true,
              ),
            ],
          ),
        ],
      ),
    );
  }


}

