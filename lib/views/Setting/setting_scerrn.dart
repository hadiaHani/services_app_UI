import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Account/sign_up.dart';

import 'package:services_app_ui/views/Home/notification.dart';
import 'package:services_app_ui/views/Setting/about_us.dart';
import 'package:services_app_ui/views/Setting/complaints.dart';
import 'package:services_app_ui/views/Setting/conditions.dart';
import 'package:services_app_ui/views/Setting/language_widgit.dart';
import 'package:services_app_ui/views/widgits.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

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
                          border:
                              Border.all(color: Colors.green.withOpacity(.7)),
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
            child: Container(
              padding: const EdgeInsets.only(top: 5),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    listTileWidgit(
                        title: "نبذة عنا ",
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AboutUs()),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                        leading: const Icon(Icons.image),
                        onPressed: () {}),
                    listTileWidgit(
                        title: "شروط الاستخدام",
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Conditions()),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                        leading: const Icon(Icons.image),
                        onPressed: () {}),
                    listTileWidgit(
                        title: "الشكاوي والاقتراحات ",
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Complaints()),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                        leading: const Icon(Icons.image),
                        onPressed: () {}),
                    listTileWidgit(
                        title: " مشاركة التطبيق",
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                        leading: const Icon(Icons.image),
                        onPressed: () {}),
                    listTileWidgit(
                        title: " كيفية استخدام التطبيق",
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                        leading: const Icon(Icons.image),
                        onPressed: () {}),
                    listTileWidgit(
                        title: " سجل كمزود خدمة",
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signup()),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                        leading: const Icon(Icons.image),
                        onPressed: () {}),
                    listTileWidgit(
                        title: "اللغة ",
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LanguageWidgit()),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                        leading: const Icon(Icons.image),
                        onPressed: () {}),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "تابعنا",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(221, 236, 231, 231),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(221, 236, 231, 231),
                          child: Icon(
                            Icons.facebook_sharp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
