import 'package:flutter/material.dart';

import 'package:services_app_ui/views/Account/my_account_screen.dart';
import 'package:services_app_ui/views/Home/all_screens.dart';
import 'package:services_app_ui/views/widgits.dart';

class EditAcount extends StatelessWidget {
  const EditAcount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyAccount()),
                );
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ))
        ],
        centerTitle: true,
        title: const Text(
          " تعديل بيانات الحساب ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontFamily: "DIN Next LT W23 ",
          ),
        ),
      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white)),
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.green.withOpacity(.7),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "الملف الشخصي",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: const Text(
                        " معلومات عامة",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 2, right: 10, left: 15),
                      alignment: Alignment.topRight,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintMaxLines: 2,
                          hintTextDirection: TextDirection.rtl,
                          hintText: "فهد ال سعود",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 13),
                          label: Text("الاسم كاملا"),
                          labelStyle:
                              TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 2, right: 10, left: 15),
                      alignment: Alignment.topRight,
                      child: const TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintMaxLines: 2,
                          hintTextDirection: TextDirection.rtl,
                          hintText: "07503755107 964+",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 13),
                          label: Text("رقم الجوال"),
                          labelStyle:
                              TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 2, right: 10, left: 15),
                      alignment: Alignment.topRight,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintMaxLines: 2,
                          hintTextDirection: TextDirection.rtl,
                          hintText: " العراق-بغداد-البصرة",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 13),
                          label: Text("العنوان"),
                          labelStyle:
                              TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                    ),
                    button(
                        top: 10,
                        bottom: 5,
                        width: double.infinity,
                        background: Colors.green.withOpacity(.7),
                        title: "تأكيد البيانات  ",
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
                )),
          )),
    );
  }
}
