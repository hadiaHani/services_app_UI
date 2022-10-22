import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Account/sign_up.dart';
import 'package:services_app_ui/views/Account/welcome.dart';
import 'package:services_app_ui/views/Home/all_screens.dart';
import 'package:services_app_ui/views/widgits.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Welcome()),
                );
              },
            ),
            centerTitle: true,
            title: const Text(
              "تسجيل الدخول",
              style: TextStyle(color: Colors.black, fontSize: 17),
            )),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                child: const Text(
                  "يجب عليك التسجيل لاستخدام هذه الخدمة , من فضلك سجل عن طريق رقم جوالك داخل العراق بدون إدخال رمز الدولة وأدخل الأرقام باللغة الانجليزية",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              customTextFormField(
                title: "رقم الجوال",
                hint: "أدخل رقم الجوال",
                type: TextInputType.phone,
                prefix: const Text("964+ "),
              ),
              button(
                  top: 40,
                  bottom: 5,
                  width: double.infinity,
                  background: Colors.green.withOpacity(.7),
                  title: "تسجيل الدخول",
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Screens();
                    }));
                  },
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Screens();
                    }));
                  }),
              Container(
                margin: const EdgeInsets.all(5),
                //   alignment: Alignment.center,
                padding: const EdgeInsets.only(right: 100),
                child: Row(
                  children: [
                    const Text(
                      "لا تملك حسابا؟",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    InkWell(
                      child: const Text(
                        "قم بإنشاء حسابك الأن !",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Signup();
                        }));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
