import 'package:flutter/material.dart';

import 'package:services_app_ui/views/Account/login.dart';
import 'package:services_app_ui/views/Account/sign_up.dart';
import 'package:services_app_ui/views/widgits.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 60),
                  alignment: Alignment.center,
                  child: Text(
                    "أهلا بك ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green.withOpacity(.7),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  color: Colors.green.withOpacity(.7),
                  height: 5,
                  width: 50,
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  child: Image.asset("assets/image/serv2.png"),
                ),
                button3(
                    //  alignment: Alignment.center,
                    width: double.infinity,
                    title: "إنشاء حساب",
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Signup();
                      }));
                    },
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Signup();
                      }));
                    }),
                button(
                    width: double.infinity,
                    background: Colors.green.withOpacity(.7),
                    title: "تسجيل الدخول",
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Login();
                      }));
                    },
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Login();
                      }));
                    }),
              ],
            )));
  }
}
