import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Offers/offer_screen.dart';
import 'package:services_app_ui/views/Offers/technicians_offers.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OfferScreen()),
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ))
          ],
          centerTitle: true,
          title: const Text(
            " التفاصيل  ",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "DIN Next LT W23 ",
                fontSize: 17),
          ),
        ),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    //   margin: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.green.withOpacity(.7),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "الوقت المتوقع للحضور",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        const Text(
                          "11:00 AM",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: "DIN Next LT W23 ",
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    //   margin: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.money,
                          color: Colors.green.withOpacity(.7),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "قيمة السعر النهائي",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 190,
                        ),
                        const Text(
                          "149",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: "DIN Next LT W23 ",
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),
                      ),
                      padding: const EdgeInsets.all(20),
                      //   margin: const EdgeInsets.all(20),
                      child: Row(children: [
                        Icon(
                          Icons.table_view_rounded,
                          color: Colors.green.withOpacity(.7),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "مدة الضمان",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 220,
                        ),
                        const Text(
                          "شهرين",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: "DIN Next LT W23 ",
                          ),
                        ),
                      ])),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    //   margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.pages,
                              color: Colors.green.withOpacity(.7),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "التفاصيل",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        ),
                        const Text(
                          """
هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.
هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.
هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.
            ",""",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.image_outlined,
                              color: Colors.green.withOpacity(.7),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "صور عن الخدمة",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              margin: const EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(.7)),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/image/i1.png",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              margin: const EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(.7)),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/image/i2.png",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              margin: const EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(.7)),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/image/i3.png",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              margin: const EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(.7)),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/image/i4.png",
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 20),
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 180,
                                    decoration: BoxDecoration(
                                        color: Colors.green[200],
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: MaterialButton(
                                        child: const Text(
                                          "  طلب استفسار ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          _show = true;
                                          setState(() {});
                                        }),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 70,
                                    width: 180,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: MaterialButton(
                                        child: const Text(
                                          " رجوع",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.green),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return const TechniciansOffers();
                                          }));
                                        }),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.green[200],
                              borderRadius: BorderRadius.circular(12)),
                          child: MaterialButton(
                              child: const Text(
                                "  قبول العرض ",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const OfferScreen();
                                }));
                              }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        bottomSheet: _showBottomSheet());
  }

  Widget? _showBottomSheet() {
    if (_show) {
      return BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
                //  border: Border.all(color: Colors.grey),
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
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(45),
                    topLeft: Radius.circular(45))),
            height: 500,
            width: double.infinity,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      right: 20,
                    ),
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.only(right: 20, top: 15),
                    child: const Text(
                      "طلب استفسار",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: BoxDecoration(
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

                        borderRadius: BorderRadius.circular(5),
                        //   border: Border.all(color: Colors.white)
                      ),
                      child: const TextField(
                        maxLines: 8,
                        decoration: InputDecoration(
                            hintText: "اكتب الاستفسار عن العرض",
                            hintStyle: TextStyle(fontSize: 14)),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    height: 70,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(12)),
                    child: MaterialButton(
                        child: const Text(
                          "ارسال",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    actions: [
                                      Container(
                                          margin: const EdgeInsets.only(top: 5),
                                          height: 50,
                                          width: 300,
                                          decoration: BoxDecoration(
                                              color: Colors.green[300],
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: MaterialButton(
                                              child: const Text(
                                                "تأكيد",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              })),
                                    ],
                                    content: Container(
                                        height: 170,
                                        width: 150,
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.topLeft,
                                              child: IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  icon:
                                                      const Icon(Icons.close)),
                                            ),
                                            Image.asset(
                                                "assets/image/alarm.png"),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                                "هل أنت متاكد من ارسال الاستفسار؟"),
                                          ],
                                        )),
                                  ));

                          _show = false;
                          setState(() {});
                        }),
                  ),

                  /* Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        _show = false;
                        setState(() {});
                      },
                      child: const Text("Close Bottom Sheet"),
                    ),
                  ),*/
                ],
              ),
            ),
          );
        },
      );
    } else {
      return null;
    }
  }
}
