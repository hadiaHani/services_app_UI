import 'package:flutter/material.dart';

import 'package:services_app_ui/views/Home/msg_widgit.dart';
import 'package:services_app_ui/views/widgits.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _Confirmation();
}

class _Confirmation extends State<Confirmation> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "تأكيد الطلب",
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
                      color: Colors.green,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green[200],
                      child: const Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        margin: const EdgeInsets.only(right: 5, left: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.grey.withOpacity(.7)),
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/image/5.png"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(right: 10),
                        alignment: Alignment.topRight,
                        child: const Text(
                          "أعمال النجارة",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.only(
                    right: 12,
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.table_view,
                      color: Colors.grey.withOpacity(.4),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "التاريخ المراد للزيارة",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(right: 30, top: 7, bottom: 7),
                      child: Stack(children: [
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
                              /*   Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  const EditAcount())));*/
                            },
                            icon: const Icon(
                              Icons.edit,
                            ),
                            color: Colors.green,
                          ),
                        )
                      ]),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  padding: const EdgeInsets.only(right: 10),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "11/01/2020",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.only(right: 12, top: 10),
                    child: Row(children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.grey.withOpacity(.4),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "الوقت  المراد للزيارة",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ])),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  padding: const EdgeInsets.only(right: 10),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "09:00 AM",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.only(right: 12, top: 5),
                    child: Row(children: [
                      Icon(
                        Icons.description_outlined,
                        color: Colors.grey.withOpacity(.4),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "وصف المشكلة",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ])),
                Container(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: const Text(
                    " هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد ",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.only(
                    right: 12,
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.green.withOpacity(.4),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "الموقع المراد النقل منه",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 7, bottom: 7),
                      child: Stack(children: [
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
                              /*   Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  const EditAcount())));*/
                            },
                            icon: const Icon(
                              Icons.edit,
                            ),
                            color: Colors.green,
                          ),
                        )
                      ]),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "المدينة المنورة",
                    style: TextStyle(fontSize: 15, color: Colors.green),
                  ),
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.only(right: 12, top: 10),
                  child: Row(children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.green.withOpacity(.4),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "الموقع المراد النقل إليه",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  padding: const EdgeInsets.only(right: 10),
                  alignment: Alignment.topRight,
                  child: const Text(
                    " مكة المكرمة",
                    style: TextStyle(fontSize: 15, color: Colors.green),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 12, top: 10),
                  child: Row(children: [
                    Icon(
                      Icons.image_outlined,
                      color: Colors.green.withOpacity(.4),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "ملحقات الميديا",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ]),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      margin: const EdgeInsets.only(right: 5, left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.grey.withOpacity(.7)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        "assets/image/1.png",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      margin: const EdgeInsets.only(right: 5, left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.grey.withOpacity(.7)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        "assets/image/2.png",
                      ),
                    ),
                  ],
                ),
                button(
                  sizedBox: 20,
                  bottom: 40,
                  background: Colors.green.withOpacity(.5),
                  title: "تأكيد وإرسال ",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MsgnWidgit()),
                    );
                  },
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MsgnWidgit()),
                    );
                  },
                )
              ]),
            )));
  }
}
