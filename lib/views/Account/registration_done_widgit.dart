// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:services_app_ui/views/Home/all_screens.dart';
import 'package:services_app_ui/views/widgits.dart';

class DoneRegis extends StatelessWidget {
  const DoneRegis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
            textDirection: TextDirection.rtl,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              slide(
                  fontWeight: FontWeight.normal,
                  titleFontSize: 18,
                  image: Image.asset(
                    "assets/image/reg.png",
                    width: 300,
                    height: 400,
                  ),
                  title: 'تم تسجيلك بنجاح',
                  titleColor: Colors.black),
              const SizedBox(
                height: 30,
              ),
              button(
                  height: 60,
                  bottom: 10,
                  width: 185,
                  background: Colors.green.withOpacity(.7),
                  title: "تم",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Screens()),
                    );
                  },
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Screens()),
                    );
                  })
            ])));
  }
}
