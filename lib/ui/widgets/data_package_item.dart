import 'package:flutter/material.dart';
import 'package:project01/shared/shared_method.dart';
import 'package:project01/shared/theme.dart';

class DataPackageItem extends StatelessWidget{

  final int amount;
  final int harga;
  final bool isSelected;

  const DataPackageItem({
    Key?key,
    required this.amount,
    required this.harga,
    this.isSelected = false,
  }): super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 155,
      height: 175,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 22,
      ),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? blueColor : whiteColor,
            width: 2,
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${amount} GB',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            formatIDR(harga),
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),

    );
  }

}