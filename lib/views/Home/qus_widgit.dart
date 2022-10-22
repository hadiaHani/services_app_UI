import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/all_screens.dart';
import 'package:services_app_ui/views/Home/time_location.dart';
import 'package:services_app_ui/views/widgits.dart';

class QuestionWidgit extends StatelessWidget {
  const QuestionWidgit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colors.transparent,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 2),
                child: slide(
                    sizeBox: 1,
                    image: Image.asset(
                      "assets/image/qus.png",
                      width: 300,
                      height: 300,
                    ),
                    height: 3,
                    right: 15,
                    left: 15,
                    top: 0,
                    subTitleFontSize: 16,
                    subTtitle:
                        'سنسألك بعض الأسئلة لجمع التفاصيل حول طلبك وعرضها على الشركات والفنيين',
                    subtitleColor: Colors.grey),
              ),
              const SizedBox(
                height: 80,
              ),
              button2(
                  height: 65,
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  sizedBox: 20,
                  bottom: 40,
                  background: Colors.green.withOpacity(.7),
                  title: "استمرار ",
                  function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TimeLocation()),
                    );
                  },
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TimeLocation()),
                    );
                  }),
            ],
          )),
    );
  }
}
