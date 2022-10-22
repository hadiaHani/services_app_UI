import 'package:flutter/material.dart';

import 'package:services_app_ui/views/Account/edit_account.dart';
import 'package:services_app_ui/views/Account/welcome.dart';
import 'package:services_app_ui/views/Home/notification.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 5),
            width: 110,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.green.withOpacity(.7),
                  ),
                ),
                Stack(children: [
                  Container(
                    height: 17,
                    width: 17,
                    margin: const EdgeInsets.only(right: 3, top: 11),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.withOpacity(.7)),
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      margin: const EdgeInsets.only(right: 5, top: 3),
                      child: const Text("4",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                              fontFamily: "DIN Next LT W23 ")),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Notifications()),
                      );
                    },
                    icon: Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.green.withOpacity(.7),
                      size: 30,
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
        leadingWidth: 120,
        leading: Container(
          margin: const EdgeInsets.only(top: 12),
          child: Image.asset("assets/image/tr.png"),
        ),
      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: 380,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: const [
                              Icon(Icons.person),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "الملف الشخصي",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                " معلومات عامة",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              Stack(children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(5)),
                                  height: 40,
                                  width: 40,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 40,
                                  //    padding: const EdgeInsets.only(left: 7, bottom: 10),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  const EditAcount())));
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                    ),
                                    color: Colors.green.withOpacity(.7),
                                  ),
                                )
                              ])
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(right: 10),
                          child: const Text(
                            "الاسم كاملا",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                        Container(
                          height: 40,
                          margin: const EdgeInsets.all(2),
                          padding: const EdgeInsets.only(
                            right: 10,
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: double.infinity,
                          child: const Text(
                            "فهد ال سعود",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 13, left: 13),
                          color: const Color.fromARGB(255, 201, 197, 197),
                          height: 1,
                          width: double.infinity,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 30,
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(right: 10),
                          child: const Text(
                            " رقم الجوال",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                        Container(
                          height: 40,
                          margin: const EdgeInsets.all(2),
                          padding: const EdgeInsets.only(
                            right: 10,
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: double.infinity,
                          child: const Text(
                            "07503755107 964+",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 13, left: 13),
                          color: const Color.fromARGB(255, 201, 197, 197),
                          height: 1,
                          width: double.infinity,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 30,
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(right: 10),
                          child: const Text(
                            "  العنوان",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                        Container(
                          height: 40,
                          margin: const EdgeInsets.all(2),
                          padding: const EdgeInsets.only(
                            right: 10,
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: double.infinity,
                          child: const Text(
                            " العراق-بغداد-البصرة",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 13, left: 13),
                          color: const Color.fromARGB(255, 201, 197, 197),
                          height: 1,
                          width: double.infinity,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    )),
                Container(
                  color: Colors.grey[100],
                  height: 20,
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                  ),
                  margin: const EdgeInsets.only(right: 15, left: 15, top: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 7,
                          blurStyle: BlurStyle.outer,
                          offset: const Offset(
                            0,
                            1,
                          ), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: ((context) => const Welcome())));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.exit_to_app_sharp,
                          color: Colors.red.withOpacity(.7),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "تسجيل خروج",
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 170,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey.withOpacity(.7),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
