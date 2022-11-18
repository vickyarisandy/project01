# project01

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


function call page

```agsl

onPressed:() {
  Navigator.pushNamed(context,'onboarding');
},
```

## File assets 

- ada icon dan image nama sesuai kebutuhan.
- font google poppins (light, regular, medium , semiBold, bold , extraBold, black).

```ags1
// detail icon dan image nama

- ic_check.png (w 24, h 24)
- ic_edit_profile.png (w 24, h 24)
- ic_help.png (w 24, h 24)
- ic_history.png (w 24, h 24)
- ic_logout.png (w 24, h 24)
- ic_more.png (w 24, h 24)
- ic_my_rewards.png (w 24, h 24)
- ic_overview.png (w 24, h 24)
- ic_pin.png (w 24, h 24)
- ic_plus_circle.png (w 24, h 24)
- ic_product_data.png (w 24, h 24)
- ic_product_food.png (w 24, h 24)
- ic_product_movie.png (w 24, h 24)
- ic_product_stream.png (w 24, h 24)
- ic_product_travel.png (w 24, h 24)
- ic_product_water.png (w 24, h 24)
- ic_reward.png (w 24, h 24)
- ic_send.png (w 24, h 24)
- ic_statistic.png (w 24, h 24)
- ic_topup.png (w 24, h 24)
- ic_transaction_cat1.png (w 24, h 24) - ic_transaction_cat5.png (w 24, h 24)
- ic_upload.png (w 24, h 24)
- ic_wallet.png (w 24, h 24)
- ic_withdraw.png (w 24, h 24)
- img_bank_bca.png (w 96.02, h 30.11)
- img_bank_bni.png (w 96.02, h 30.11)
- img_bank_mandiri.png (w 96.02, h 30.11) 
- img_bank_ocbc.png (w 96.02, h 30.11)
- img_bg_card.png
- img_friend1.png (w 45, h 45) - img_friend4.png (w 45, h 45)
- img_logo_dark.png
- img_logo_light.png 
- img_onboarding1.png - img_onboarding3.png
- img_profile.png
- img_provider_indosat.png
- img_provider_singtel.png
- img_provider_telkomsel.png
- img_tips1.png (w 155, h 110) - img_tips4.png (w 155, h 110) 
- img_wallet.png (w 80, h 55)

// Detail ukuran dan style Font

light, regular, medium , semiBold, bold , extraBold, black,


```

## Custom Widget

```ags1
import 'package:flutter/material.dart';

class TransferRecentUserItem extends StatelessWidget{
  const TransferRecentUserItem({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      
    );
  }

}
```