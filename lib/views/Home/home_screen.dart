import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:services_app_ui/views/Home/notification.dart';
import 'package:services_app_ui/views/Home/qus_widgit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final images = [
    "assets/image/adv.png",
    "assets/image/adv2.png",
    "assets/image/adv.png",
    "assets/image/adv2.png",
    "assets/image/adv.png",
  ];

  List<Widget> generateImage() {
    return images
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

  int _current = 0;
  final tital = [
    "خصم 30% ",
    "خصم 30% ",
    "خصم 20% ",
    "خصم 15% ",
    "خصم 10% ",
    "خصم 25% ",
  ];

  final subTital = [
    " على خدمات السباكة",
    " على خدمات القصارة",
    " على خدمات الدهان",
    " على خدمات تصليح السيارات",
    " على خدمات البلاط",
    " على خدمات صيانة الشبابيك",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
          child: ListView(children: [
            Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 15),
                color: Colors.white,
                child: Stack(
                  children: [
                    CarouselSlider(
                        //  items: generateImage(),

                        items: [
                          Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/image/adv.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  child: Text(
                                    tital[_current],
                                    style: const TextStyle(
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin: const EdgeInsets.only(
                                    right: 15,
                                  ),
                                  child: Text(subTital[_current],
                                      style: const TextStyle(
                                          fontFamily: "Cairo",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 18)),
                                )
                              ],
                            ),
                          ]),
                          Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/image/adv2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  child: Text(
                                    tital[_current],
                                    style: const TextStyle(
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin: const EdgeInsets.only(
                                    right: 15,
                                  ),
                                  child: Text(subTital[_current],
                                      style: const TextStyle(
                                          fontFamily: "Cairo",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 18)),
                                )
                              ],
                            ),
                          ]),
                          Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/image/adv2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  child: Text(
                                    tital[_current],
                                    style: const TextStyle(
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin: const EdgeInsets.only(
                                    right: 15,
                                  ),
                                  child: Text(subTital[_current],
                                      style: const TextStyle(
                                          fontFamily: "Cairo",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 18)),
                                )
                              ],
                            ),
                          ]),
                          Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/image/adv2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  child: Text(
                                    tital[_current],
                                    style: const TextStyle(
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin: const EdgeInsets.only(
                                    right: 15,
                                  ),
                                  child: Text(subTital[_current],
                                      style: const TextStyle(
                                          fontFamily: "Cairo",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 18)),
                                )
                              ],
                            ),
                          ]),
                          Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/image/adv2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  child: Text(
                                    tital[_current],
                                    style: const TextStyle(
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin: const EdgeInsets.only(
                                    right: 15,
                                  ),
                                  child: Text(subTital[_current],
                                      style: const TextStyle(
                                          fontFamily: "Cairo",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 18)),
                                )
                              ],
                            ),
                          ]),
                          Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/image/adv2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  child: Text(
                                    tital[_current],
                                    style: const TextStyle(
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 15),
                                  margin: const EdgeInsets.only(
                                    right: 15,
                                  ),
                                  child: Text(subTital[_current],
                                      style: const TextStyle(
                                          fontFamily: "Cairo",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 18)),
                                )
                              ],
                            ),
                          ]),
                        ],
                        options: CarouselOptions(
                            enlargeCenterPage: true,
                            autoPlay: true,
                            height: 170,
                            onPageChanged: (index, other) {
                              setState(() {
                                _current = index;
                              });
                            })),
                    /*   AspectRatio(
                      aspectRatio: 18 / 8,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.only(right: 55, top: 15),
                            margin: const EdgeInsets.only(right: 15, top: 15),
                            child: Text(
                              tital[_current],
                              style: const TextStyle(
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.only(right: 55, top: 15),
                            margin: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: Text(subTital[_current],
                                style: const TextStyle(
                                    fontFamily: "Cairo",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 18)),
                          )
                        ],
                      ),
                    )*/
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              alignment: Alignment.topRight,
              child: const Text(
                "اختر الخدمة",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: "Cairo",
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 5),
                alignment: Alignment.topRight,
                child: const Text(
                  "  ثم احصل على أفضل عروض الأسعار من مزودي الخدمة",
                  style: TextStyle(
                      color: Colors.grey, fontFamily: "Cairo", fontSize: 12),
                )),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  height: 390,
                  child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 8.0,
                      children: List.generate(servicesList.length, (index) {
                        return Center(
                            child: ServicesWidgit(servicesList[index]));
                      }))),
            ),
          ]),
        ));
  }
}

class Services {
  String name;
  String img;
  Services(this.name, this.img);
}

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
  Services("السباكة", "assets/image/1.png"),
  Services("القصارة", "assets/image/2.png"),
  Services("الدهان", "assets/image/3.png"),
  Services("تصليح غسالات", "assets/image/4.png"),
  Services("صيانة شبابيك", "assets/image/5.png"),
  Services("بلاط ", "assets/image/6.png"),
  Services("اسم الخدمة", "assets/image/7.png"),
  Services("اسم الخدمة", "assets/image/8.png"),
  Services("اسم الخدمة", "assets/image/9.png"),

  /*
  Services("السباكة", "assets/image/1.png"),
  Services("القصارة", "assets/image/2.png"),
  Services("الدهان", "assets/image/3.png"),
  Services("تصليح غسالات", "assets/image/4.png"),
  Services("صيانة شبابيك", "assets/image/5.png"),
  Services("بلاط ", "assets/image/6.png"),
  Services("اسم الخدمة", "assets/image/7.png"),
  Services("اسم الخدمة", "assets/image/8.png"),
  Services("اسم الخدمة", "assets/image/9.png"),
  Services("السباكة", "assets/image/1.png"),
  Services("القصارة", "assets/image/2.png"),
  Services("الدهان", "assets/image/3.png"),
  Services("تصليح غسالات", "assets/image/4.png"),
  Services("صيانة شبابيك", "assets/image/5.png"),
  Services("بلاط ", "assets/image/6.png"),
  Services("اسم الخدمة", "assets/image/7.png"),
  Services("اسم الخدمة", "assets/image/8.png"),
  Services("اسم الخدمة", "assets/image/9.png"),*/
];

class ServicesWidgit extends StatelessWidget {
  Services services;
  ServicesWidgit(this.services, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const QuestionWidgit();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(right: 5, left: 5),
        margin: const EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
            color: const Color.fromARGB(80, 176, 233, 186),
            borderRadius: BorderRadius.circular(10)),
        height: 200,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(services.img),
            const SizedBox(
              height: 15,
            ),
            Text(
              services.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: "Cairo",
              ),
            )
          ],
        ),
      ),
    );
  }
}
