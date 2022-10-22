// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/all_screens.dart';
import 'package:services_app_ui/views/widgits.dart';

class SuggestionWidgit extends StatelessWidget {
  const SuggestionWidgit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screens()),
                );
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ))
        ],
      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            slide(
                top: 20,
                sizeBox: 20,
                height: 400,
                image: Image.asset(
                  "assets/image/msg.png",
                ),
                subTtitle:
                    'تم ارسال شكواكم او اقتراحكم, وسيتم الرد عليكم باقرب وقت',
                right: 15,
                left: 15,
                subtitleColor: Colors.grey),
            const SizedBox(
              height: 30,
            ),
            button(
                height: 60,
                bottom: 10,
                width: 185,
                background: Colors.green.withOpacity(.7),
                title: "تم",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Screens()),
                  );
                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Screens()),
                  );
                })
          ])),
    );
  }
}
