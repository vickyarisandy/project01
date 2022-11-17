import 'package:flutter/material.dart';
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
                    'assets/gambar/ic_overview.png',
                    width: 20,
                  color: blueColor,
                  ),
                  label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/gambar/ic_history.png',
                  width: 20,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/gambar/ic_Statistik.png',
                  width: 20,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/gambar/ic_reward.png',
                  width: 20,
                ),
                label: 'Overview',
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
                'nama',
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
              '12.500',
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
            ],
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
                  Navigator.pushNamed(context, 'topup');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_send.png',
                title: 'Send',
                onTap: (){},
              ),HomeServiceItem(
                iconUrl: 'assets/ic_withdraw.png',
                title: 'withdraw',
                onTap: (){},
              ),HomeServiceItem(
                iconUrl: 'assets/ic_more.png',
                title: 'More',
                onTap: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransaction(){
    return Container(
      child: Column(
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
              children: const [
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat1.png',
                  title: 'Top Up',
                  time: 'Yesterday',
                  value: '+4.000',
                ),
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat2.png',
                  title: 'Cashback',
                  time: 'Sep 11',
                  value: '+22.000',
                ),
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat3.png',
                  title: 'Withdraw',
                  time: 'Sep 10',
                  value: '-14.000',
                ),
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat4.png',
                  title: 'Transfer',
                  time: 'Yesterday',
                  value: '-4.000',
                ),
                HomeLatestTransaction(
                  iconUrl: 'assets/ic_cat5.png',
                  title: 'Electric',
                  time: 'Yesterday',
                  value: '-124.000',
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
                  imageUrl: 'assets/img_tips2.png',
                  title: 'tips',
                  url: 'https://google.com'
              ),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips3.png',
                  title: 'tips',
                  url: 'https://google.com'
              ),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips4.png',
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