import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/forms.dart';

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
        ],
      ),
    );
  }


  Widget buildRecentUser(){
    return Container(
      margin: const EdgeInsets.only(
          top: 40
      ),
    );
  }

  Widget buildResult(){
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
        ],
      ),
    );
  }


}