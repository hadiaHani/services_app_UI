import 'package:flutter/material.dart';

import 'package:services_app_ui/views/Account/my_account_screen.dart';
import 'package:services_app_ui/views/Home/home_screen.dart';
import 'package:services_app_ui/views/Offers/offer_screen.dart';
import 'package:services_app_ui/views/Setting/setting_scerrn.dart';

class Screens extends StatefulWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int currentIndex = 3;
  List<Widget> screens = [
    const Setting(),
    const MyAccount(),
    const OfferScreen(),
    const Home()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            selectedItemColor: Colors.green,
            onTap: (index) {
              setState(() {});
              currentIndex = index;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "الاعدادات "),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "حسابي "),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: "العروض "),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "الرئيسية "),
            ]),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: screens[currentIndex],
        ));
  }
}
