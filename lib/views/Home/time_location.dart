import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/all_screens.dart';
import 'package:services_app_ui/views/Home/write_detailes.dart';
import 'package:services_app_ui/views/widgits.dart';

class TimeLocation extends StatefulWidget {
  const TimeLocation({Key? key}) : super(key: key);

  @override
  State<TimeLocation> createState() => _TimeLocationState();
}

class _TimeLocationState extends State<TimeLocation> {
  bool isCheck = false;
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "رجاء اختر الوقت والموقع",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Screens()),
                  );
                },
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
                    //  endIndent: 1,
                    color: Colors.green,
                  ),
                  Container(
                    height: 3,
                    width: 30,
                    //  endIndent: 1,
                    color: Colors.grey,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: const Icon(
                      Icons.insert_page_break,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 55,
                    //  endIndent: 1,
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
                margin: const EdgeInsets.only(right: 10, top: 5),
                padding: const EdgeInsets.only(right: 10),
                alignment: Alignment.topRight,
                child: const Text(
                  "تاريخ ووقت الزيارة",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.green,
                  title: const Text(
                    "في أقرب وقت ممكن",
                    style: TextStyle(fontSize: 14),
                  ),
                  value: isCheck,
                  onChanged: (value) {
                    isCheck = !isCheck;
                    setState(() {});
                  }),
              Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
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
                  width: 380,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 65,
                        width: 340,
                        child: TextField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.white),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              hintText: ("ادخل التاريخ المراد للزيارة"),
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 14),
                              suffixIcon: const Icon(
                                Icons.watch_later_outlined,
                                color: Colors.grey,
                              ),
                            )),
                      ),
                    ],
                  )),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(right: 10),
                alignment: Alignment.topRight,
                child: const Text(
                  "الموقع المراد النقل منه",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
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
                  width: 380,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 65,
                        width: 340,
                        child: TextField(
                            keyboardType: TextInputType.streetAddress,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.white),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              hintText: ("اختار الموقع المراد النقل منه"),
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 14),
                              suffixIcon: const Icon(
                                Icons.place,
                                color: Colors.grey,
                              ),
                            )),
                      ),
                    ],
                  )),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(right: 10),
                alignment: Alignment.topRight,
                child: const Text(
                  "الموقع المراد النقل إليه",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 5,
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
                  /* border: Border.all(
                      color: const Color.fromARGB(248, 226, 215, 215)),*/
                  //  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 380,
                child: Row(
                  children: [
                    SizedBox(
                      height: 65,
                      width: 340,
                      child: TextField(
                          cursorColor: Colors.green,
                          cursorWidth: 0,
                          cursorHeight: 0,
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 0, color: Colors.white),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            hintText: ("اختار الموقع المراد النقل إليه"),
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                            suffixIcon: const Icon(
                              Icons.place,
                              color: Colors.grey,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              button2(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  background: Colors.green.withOpacity(.7),
                  title: "التالي",
                  function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WriteDetailes()),
                    );
                  },
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WriteDetailes()),
                    );
                  })
            ]))));
  }
}
