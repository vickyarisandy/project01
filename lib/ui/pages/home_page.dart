import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key?key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}