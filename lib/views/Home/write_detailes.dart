import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/confirmation.dart';
import 'package:services_app_ui/views/widgits.dart';

class WriteDetailes extends StatefulWidget {
  const WriteDetailes({Key? key}) : super(key: key);

  @override
  State<WriteDetailes> createState() => _WriteDetailes();
}

class _WriteDetailes extends State<WriteDetailes> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "اكتب التفاصيل",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ))
          ],
        ),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(right: 110),
                  height: 70,
                  alignment: Alignment.center,
                  child: Row(children: [
                    CircleAvatar(
                      backgroundColor: Colors.green[200],
                      child: const Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 3,
                      width: 25,
                      color: Colors.green,
                    ),
                    Container(
                      height: 3,
                      width: 30,
                      color: Colors.green,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green[200],
                      child: const Icon(
                        Icons.insert_page_break,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 3,
                      width: 25,
                      color: Colors.green,
                    ),
                    Container(
                      height: 3,
                      width: 30,
                      color: Colors.grey,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      child: const Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(right: 10),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "الوصف",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(right: 10),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "اضافة وصف واضح، يمكن تقديم عرض افضل لك.",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    margin: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    child: SizedBox(
                      // height: 150,
                      width: 360,
                      child: TextField(
                          maxLines: 4,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 0, color: Colors.white),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            hintText: ("رجاء اكتب ماذا تريد"),
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          )),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(right: 10),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "أضف صور أو فيديو للمشكلة",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(right: 10),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "أضف أكثر من صورة للمشكلة حتى يسهل تحديد وفهم المشكلة",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 17, top: 7, bottom: 7),
                  alignment: Alignment.topRight,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5)),
                      height: 60,
                      width: 70,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(right: 10, top: 7),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                        ),
                        color: Colors.green,
                      ),
                    )
                  ]),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 7, right: 15),
                  child: Row(
                    children: [
                      const Text(
                        "تسجيل صوتي",
                        style: TextStyle(fontSize: 17),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: const Icon(
                          Icons.mic_rounded,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 7, right: 15),
                  child: Row(
                    children: [
                      const Text(
                        "برومو كود",
                        style: TextStyle(fontSize: 17),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Container(
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(right: 9),
                            height: 50,
                            width: 180,
                            child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0, color: Colors.white),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  hintText: ("ادخال الكود"),
                                  hintStyle: const TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                )),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                button2(
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    sizedBox: 20,
                    bottom: 40,
                    background: Colors.green.withOpacity(.5),
                    title: "التالي ",
                    fontSize: 17,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Confirmation()),
                      );
                    },
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Confirmation()),
                      );
                    }),
              ]),
            )));
  }
}
