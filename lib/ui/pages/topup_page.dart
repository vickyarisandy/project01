import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/bank_item.dart';
import 'package:project01/ui/widgets/buttons.dart';

class TopupPage extends StatelessWidget{
  const TopupPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Top UP'
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
              'Wallet',
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
                  'assets/wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '0000 0000 0000 0000',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                      'Nama Pengguna',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Pilih Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BankItem(
              title: 'BCA',
              imageUrl: 'assets/img_bank_bca.png',
              isSelected: true,
          ),
          const BankItem(
            title: 'BNI',
            imageUrl: 'assets/img_bank_bni.png',
          ),
          const BankItem(
            title: 'Mandiri',
            imageUrl: 'assets/img_bank_mandiri.png',
          ),
          const BankItem(
            title: 'OCBC',
            imageUrl: 'assets/img_bank_ocbc.png',
          ),
          const SizedBox(
            height: 12,
          ),
          CustomFilledButton(
              title: 'Lanjut',
              onPressed: (){},
          ),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}