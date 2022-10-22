import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Account/code.dart';
import 'package:services_app_ui/views/Account/login.dart';
import 'package:services_app_ui/views/Account/welcome.dart';
import 'package:services_app_ui/views/Setting/conditions.dart';
import 'package:services_app_ui/views/widgits.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isCheck = false;

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
              "إنشاء حساب ",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                customTextFormField(
                  title: " الاسم كاملا",
                  hint: "أدخل الاسم كاملا ",
                  type: TextInputType.name,
                ),
                customTextFormField(
                  title: "رقم الجوال",
                  hint: "أدخل رقم الجوال",
                  prefix: const Text("964+ "),
                  type: TextInputType.phone,
                ),
                customTextFormField(
                  title: " العنوان",
                  hint: "إدخال العنوان  ",
                  type: TextInputType.text,
                ),
                CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.green,
                    title: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Conditions()),
                        );
                      },
                      child: const Text(
                        "أوافق على شروط الاستخدام ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    value: isCheck,
                    onChanged: (value) {
                      setState(() {
                        isCheck = !isCheck;
                      });
                    }),
                button(
                    top: 10,
                    bottom: 5,
                    width: double.infinity,
                    background: Colors.green.withOpacity(.7),
                    title: "إنشاء حساب ",
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Code();
                      }));
                    },
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Code();
                      }));
                    }),
                Container(
                  margin: const EdgeInsets.all(5),
                  //   alignment: Alignment.center,
                  padding: const EdgeInsets.only(right: 100),
                  child: Row(
                    children: [
                      const Text(
                        "هل لديك حساب معنا؟",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      InkWell(
                        child: const Text(
                          " تسجيل الدخول ",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Login();
                          }));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
