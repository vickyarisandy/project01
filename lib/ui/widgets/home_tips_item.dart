import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';

class HomeTipsItem extends StatelessWidget{

  final String imageUrl;
  final String title;
  final String url;

  const HomeTipsItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.url,
  }) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 155,
        height: 176,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            child: Image.asset(
              'imageUrl',
              width: 155,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12
              ),
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}