import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Setting/suggestion_widgit.dart';
import 'package:services_app_ui/views/widgits.dart';

class Complaints extends StatelessWidget {
  const Complaints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ))
          ],
          centerTitle: true,
          title: const Text(
            "  الشكاوي والاقتراحات",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
                child: Column(children: [
              const SizedBox(
                height: 25,
              ),
              customTextFormField(
                title: "الاسم ",
                hint: "أدخل الاسم كاملا ",
                type: TextInputType.name,
              ),
              customTextFormField(
                title: "رقم الجوال",
                hint: "أدخل رقم الجوال",
                prefix: const Text("964+ "),
                type: TextInputType.phone,
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
                child: const Text(
                  "الرسالة ",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 10),
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
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
                  ),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 0, color: Colors.white),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        hintText: "قم بادخال نص رسالة الشكوى أو الاقتراح",
                        hintStyle: const TextStyle(fontSize: 14)),
                  )),
              button(
                  top: 10,
                  bottom: 5,
                  width: double.infinity,
                  background: Colors.green.withOpacity(.7),
                  title: "إرسال  ",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SuggestionWidgit()),
                    );
                  },
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SuggestionWidgit()),
                    );
                  }),
            ]))));
  }
}
