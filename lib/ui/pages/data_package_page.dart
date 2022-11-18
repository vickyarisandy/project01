import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';
import 'package:project01/ui/widgets/data_package_item.dart';
import 'package:project01/ui/widgets/forms.dart';
import 'package:project01/ui/widgets/tranfer_result_user_item.dart';

class DataPackagePage extends StatelessWidget{
  const DataPackagePage({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Paket Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30,),
          Text(
              'Masukan Nomor',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: '+628',
            isShowTitle: false,
          ),
          const SizedBox(height: 40,),
          Text(
              'Pilih paket',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14,),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: const [
              DataPackageItem(
                  amount: 1,
                  harga: 12000,
              ),
              DataPackageItem(
                amount: 2,
                harga: 22000,
              ),
              DataPackageItem(
                amount: 5,
                harga: 60000,
                isSelected: true,
              ),
              DataPackageItem(
                amount: 10,
                harga: 70000,
              ),
            ],
          ),
          const SizedBox(height: 85,),
          CustomFilledButton(
              title: 'Continue',
            onPressed: () async {
              if(await Navigator.pushNamed(context, '/pin') == true ){
                Navigator.pushNamedAndRemoveUntil(context, '/data-package-success', (route) => false);
              }
            },
          ),
          const SizedBox(height: 57,),
        ],
      ),
    );
  }

}