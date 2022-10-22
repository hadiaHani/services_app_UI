import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/home_screen.dart';

class ServicesWidgit extends StatelessWidget {
  late Services services;
  List<Services> servicesList = [
    Services("السباكة", "assets/image/1.png"),
    Services("القصارة", "assets/image/2.png"),
    Services("الدهان", "assets/image/3.png"),
    Services("تصليح غسالات", "assets/image/4.png"),
    Services("صيانة شبابيك", "assets/image/5.png"),
    Services("بلاط ", "assets/image/6.png"),
    Services("اسم الخدمة", "assets/image/7.png"),
    Services("اسم الخدمة", "assets/image/8.png"),
    Services("اسم الخدمة", "assets/image/9.png"),
  ];

  ServicesWidgit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(services.name)],
      ),
    );
  }
}
