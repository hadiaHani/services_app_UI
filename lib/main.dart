import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:services_app_ui/views/Home/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: "Cairo",
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0,
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.white,
                    statusBarBrightness: Brightness.light))),
        debugShowCheckedModeBanner: false,
        home: const Splash());
  }
}
