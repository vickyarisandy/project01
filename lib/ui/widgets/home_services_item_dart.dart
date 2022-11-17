import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';

class HomeServiceItem extends StatelessWidget{

  final String iconUrl;
  final String title;
  final VoidCallback? onTap; //fungsi redirect

  const HomeServiceItem({
    Key ? key,
    required this.iconUrl,
    required this.title,
    this.onTap, //opsional
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(bottom:8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Center(
              child: Image.asset(
                  iconUrl,
                width: 26,
              ),
            ),
          ),
          Text(
              title,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),

        ],
      ),
    );
  }

}