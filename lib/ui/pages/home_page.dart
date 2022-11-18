import 'package:flutter/material.dart';
import 'package:project01/shared/shared_method.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/home_lates_transaction.dart';
import 'package:project01/ui/widgets/home_tips_item.dart';

import '../widgets/home_services_item_dart.dart';
import '../widgets/home_user_item.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key?key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: whiteColor,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 6,
          elevation: 0,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            elevation: 0,
            selectedItemColor: blueColor,
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: blueTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            unselectedLabelStyle: blackTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                    'assets/ic_overview.png',
                    width: 20,
                  color: blueColor,
                  ),
                  label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_history.png',
                  width: 20,
                ),
                label: 'Riwayat',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_Statistik.png',
                  width: 20,
                ),
                label: 'Statistik',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_reward.png',
                  width: 20,
                ),
                label: 'Reward',
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: purpleColor,
        child: Image.asset(
            'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24
        ),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(context),
          buildLatestTransaction(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(
          top:40
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@nama',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Nama Lengkap',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap:(){
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      'assets/img_profile.png',
                    ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWalletCard(){
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(
        top:30,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              'assets/img_bg_card.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'nama user',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
              '**** **** **** 1234',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
              'Balance',
            style: whiteTextStyle,
          ),
          Text(
            formatIDR(12500),
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLevel(){
    return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                  'Level 1 ',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const Spacer(),
              Text(
                  '55%',
                style: greyTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                'of ${formatIDR(20000)}',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
                value: 0.55,
                minHeight: 5,
                valueColor: AlwaysStoppedAnimation(greenColor),
                backgroundColor: lightBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(
          top:30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Somting',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                iconUrl: 'assets/ic_topup.png',
                title: 'Top up',
                onTap: (){
                  Navigator.pushNamed(context, '/top-up');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_send.png',
                title: 'Send',
                onTap: (){
                  Navigator.pushNamed(context, '/transfer');
                },
              ),HomeServiceItem(
                iconUrl: 'assets/ic_withdraw.png',
                title: 'withdraw',
                onTap: (){},
              ),HomeServiceItem(
                iconUrl: 'assets/ic_more.png',
                title: 'More',
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) => const MoreDialog(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransaction(){
    return Container(
      margin: const EdgeInsets.only(
          top:30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transaciton',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(
                top:14
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat1.png',
                  title: 'Top Up',
                  time: 'Yesterday',
                  value: '+ ${formatIDR(4000, symbol: '' )}',
                ),
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat1.png',
                  title: 'Cashback',
                  time: 'Sep 11',
                  value: '+ ${formatIDR(22000, symbol: '' )}',
                ),
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat1.png',
                  title: 'Withdraw',
                  time: 'Sep 10',
                  value: '- ${formatIDR(14000, symbol: '' )}',
                ),
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat1.png',
                  title: 'Transfer',
                  time: 'Yesterday',
                  value: '- ${formatIDR(4000, symbol: '' )}',
                ),
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat1.png',
                  title: 'Electric',
                  time: 'Yesterday',
                  value: '- ${formatIDR(124000, symbol: '' )}',
                ),
                ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain(){
    return Container(
        margin: const EdgeInsets.only(
            top:30,
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                HomeUserItem(
                    imageUrl: 'assets/img_friend1.png',
                    username: 'namauser'
                ),
                HomeUserItem(
                    imageUrl: 'assets/img_friend2.png',
                    username: 'namauser'
                ),
                HomeUserItem(
                    imageUrl: 'assets/img_friend3.png',
                    username: 'namauser'
                ),
                HomeUserItem(
                    imageUrl: 'assets/img_friend4.png',
                    username: 'namauser'
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFriendlyTips(){
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 18,
            children: const [
              HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'tips',
                  url: 'https://google.com'
              ),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'tips',
                  url: 'https://google.com'
              ),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'tips',
                  url: 'https://google.com'
              ),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'tips',
                  url: 'https://google.com'
              ),
            ],
          ),

        ],
      ),
    );
  }

}


class MoreDialog extends StatelessWidget{
  const MoreDialog({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        height: 326,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do More with Us',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 13,),
            Wrap(
              spacing: 29,
              runSpacing: 25,
              children: [
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_data.png',
                  title: 'Data',
                  onTap: (){
                    Navigator.pushNamed(context, '/data-provider');
                  },
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_food.png',
                  title: 'Makanan',
                  onTap: (){},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_movie.png',
                  title: 'Film',
                  onTap: (){},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_water.png',
                  title: 'Air Mineral',
                  onTap: (){},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_stream.png',
                  title: 'Stream',
                  onTap: (){},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_travel.png',
                  title: 'Travel',
                  onTap: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}