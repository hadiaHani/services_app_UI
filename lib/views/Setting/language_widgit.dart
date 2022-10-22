import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/on_boarding.dart';
import 'package:services_app_ui/views/widgits.dart';

class LanguageWidgit extends StatelessWidget {
  const LanguageWidgit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 160),
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Language - زمان - اللغة",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      /* Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const OnboardingScreen();
                      }));*/
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
                        /*border: Border.all(
                              color: const Color.fromARGB(255, 219, 214, 214))*/
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                              backgroundColor: Colors.green.withOpacity(.5),
                              child: const Text(
                                "KU",
                                style: TextStyle(
                                  fontFamily: "DIN Next LT W23 ",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "كوردي ",
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
                      /*    Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const OnboardingScreen();
                      }));*/
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
                        ], /*
                          border: Border.all(
                              color: const Color.fromARGB(255, 219, 214, 214))*/
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                              backgroundColor: Colors.green.withOpacity(.5),
                              child: const Text(
                                "ع",
                                style: TextStyle(
                                  fontFamily: "DIN Next LT W23 ",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "العربية",
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
                      /*  Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return OnboardingScreen();
                      }));*/
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
                        /*  border: Border.all(
                              color: const Color.fromARGB(255, 219, 214, 214))*/
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                              backgroundColor: Colors.green.withOpacity(.5),
                              child: const Text(
                                "EN",
                                style: TextStyle(
                                  fontFamily: "DIN Next LT W23 ",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "English",
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: "DIN Next LT W23 ",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    child: Image.asset("assets/image/serv2.png"),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  button2(
                      color: Colors.white,
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      sizedBox: 20,
                      bottom: 40,
                      background: Colors.green.withOpacity(.5),
                      title: "التالي ",
                      function: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const OnboardingScreen();
                        }));
                      },
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const OnboardingScreen();
                        }));
                      }),
                  /*
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(.5),
                        borderRadius: BorderRadius.circular(8)),
                    margin: const EdgeInsets.only(top: 130),
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "التالي ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ],
                        ),
                        onPressed: () {}),
                  )*/
                ],
              ),
            )),
      ),
    );
  }
}
