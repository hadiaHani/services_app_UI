// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/all_screens.dart';
import 'package:services_app_ui/views/Offers/offer_screen.dart';
import 'package:services_app_ui/views/widgits.dart';

class MsgnWidgit extends StatelessWidget {
  const MsgnWidgit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 2),
              child: slide(
                  image: Image.asset(
                    "assets/image/msg.png",
                    width: 300,
                    height: 400,
                  ),
                  height: 3,
                  sizeBox: 0,
                  titleColor: Colors.green.withOpacity(.7),
                  title: "لقد  تم ارسال طلبك بنجاح",
                  titleFontSize: 24,
                  fontWeight: FontWeight.bold,
                  subTitleFontSize: 18,
                  subTtitle: 'سيتم تقديم العروض قريبا, خلال ساعة',
                  subtitleColor: Colors.grey),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 0),
              //  color: Colors.green,
              //     height: 100,
              //  width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(
                      height: 60,
                      bottom: 0,
                      top: 100,
                      width: 185,
                      background: Colors.green.withOpacity(.7),
                      title: "قائمة الطلبات",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OfferScreen()),
                        );
                      },
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OfferScreen()),
                        );
                      }),
                  button3(
                      top: 100,
                      width: 180,
                      title: "إنهاء",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screens()),
                        );
                      },
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screens()),
                        );
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
