import 'dart:async';

import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/user_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const User())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/image/splash.png",
                  ),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Image.asset("assets/image/ser.png"),
            )));
  }
}
