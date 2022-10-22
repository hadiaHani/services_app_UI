import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Setting/language_widgit.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 160),
            alignment: Alignment.topRight,
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "المستخدم",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "الرجاء اختيار نوع مستخدم التطبيق",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LanguageWidgit();
                    }));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
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
                      borderRadius: BorderRadius.circular(15),
                      /*    border: Border.all(
                            color: const Color.fromARGB(255, 219, 214, 214))*/
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(176, 233, 186, 1),
                          child: Icon(
                            Icons.person_pin,
                            color: Color.fromRGBO(99, 211, 118, 0.5),
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "زبون ",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LanguageWidgit();
                    }));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
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
                      borderRadius: BorderRadius.circular(15),
                      /*  border: Border.all(
                            color: const Color.fromARGB(255, 219, 214, 214))*/
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(176, 233, 186, 1),
                          child: Icon(
                            Icons.supervised_user_circle_sharp,
                            color: Color.fromRGBO(99, 211, 118, 0.5),
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "مزود خدمة ",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 160),
                  child: Image.asset("assets/image/serv.png"),
                )
              ],
            ),
          )),
    );
  }
}
