import 'package:flutter/material.dart';
import 'package:project01/shared/shared_method.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';
import 'package:project01/ui/widgets/data_provider_item.dart';

class DataProviderPage extends StatelessWidget{
  const DataProviderPage({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              'Beli Data'
          ),
        ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
              'Dari Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                  'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '0000 0000 0000 1234',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(height: 2,),
                  Text(
                      'Balance: ${formatIDR(12500)}',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 40,),
          Text(
            'Pilih Provider',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14,),
          const DataProviderItem(
            name: 'Telkomsel',
            imageUrl: 'assets/img_provider_telkomsel.png',
            isSelected: true,
          ),
          const DataProviderItem(
            name: 'Indosat Oordeo',
            imageUrl: 'assets/img_provider_indosat.png',
          ),
          const DataProviderItem(
            name: 'Three (3)',
            imageUrl: 'assets/img_provider_three.png',
          ),
          const SizedBox(height: 135,),
          CustomFilledButton(
            title: 'continue',
            onPressed: (){
              Navigator.pushNamed(context, '/data-package');
            },
          ),
          const SizedBox(height: 57,),
        ],
      ),
    );
  }

}