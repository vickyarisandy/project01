import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';

class DataPackageSuccess extends StatelessWidget{
  const DataPackageSuccess ({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Paket Data\n berhasil Terbeli',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'test',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: 183,
              title: 'Back Home',
              onPressed: (){

                Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}