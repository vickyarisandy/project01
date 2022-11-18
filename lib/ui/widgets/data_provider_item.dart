import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';

class DataProviderItem extends StatelessWidget{

  final String imageUrl;
  final String name;
  final bool isAvailable;
  final bool isSelected;

  const DataProviderItem({
    Key?key,
    required this.imageUrl,
    required this.name,
    this.isAvailable = false,
    this.isSelected = false,
  }): super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:  whiteColor,
        border: isSelected ? Border.all(
          width: 2,
          color: blueColor,
        ) : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
              imageUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                  'Available',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}