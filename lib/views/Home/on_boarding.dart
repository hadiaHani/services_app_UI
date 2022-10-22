// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:services_app_ui/views/Account/welcome.dart';
import 'package:services_app_ui/views/Home/all_screens.dart';
import 'package:services_app_ui/views/widgits.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 4;
  int _currentPage = 0;
  int i = 0;
  final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }

    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8,
      width: isActive ? 25.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive
            ? Colors.green
            : _currentPage == 0
                ? const Color(0xffD5D5D5)
                : _currentPage == 1
                    ? const Color(0xffD5D5D5)
                    : const Color(0xffD5D5D5),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

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
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    slide(
                        image: Image.asset(
                          "assets/image/onB1.png",
                          width: 300,
                          height: 300,
                        ),
                        title: " تطبيق ببساطة",
                        subTtitle:
                            'هو فكرة من قبل شباب مهندسين طموحين ذوي خبرة حيث يوفر لك بكل بساطة خدمات الصيانة العامة بشكل يلبي جميع المتطلبات لباب بيتك او شركتك',
                        titleColor: Colors.green.withOpacity(.6),
                        subtitleColor: Colors.grey),
                    slide(
                        image: Image.asset(
                          "assets/image/onB2.png",
                          width: 300,
                          height: 300,
                        ),
                        title: "الأفضل ",
                        subTtitle:
                            'لانه يقدم لك مزودين خدمة محترفين ومخلصين مختارين من قبل كادر هندسي مختص, وضمان على جودة العمل',
                        titleColor: Colors.green.withOpacity(.6),
                        subtitleColor: Colors.grey),
                    slide(
                        image: Image.asset(
                          "assets/image/onB3.png",
                          width: 300,
                          height: 300,
                        ),
                        title: "الأرخص ",
                        subTtitle:
                            'لانه يقدم لك الخدمة عن طريق مناقصة سريعة من قبل مزودين الخدمة , ولايضيف التطبيق اي فائدة له',
                        titleColor: Colors.green.withOpacity(.6),
                        subtitleColor: Colors.grey),
                    slide(
                        image: Image.asset(
                          "assets/image/onB4.png",
                          width: 300,
                          height: 300,
                        ),
                        title: "الأسهل ",
                        subTtitle:
                            'لانه يوفر لك وقت البحث عن مزودين الخدمة الاكفاء من خلال ضغطة زر',
                        titleColor: Colors.black.withOpacity(.8),
                        subtitleColor: Colors.black.withOpacity(.5)),
                  ],
                ),
              ),
              Container(
                //    margin: EdgeInsets.only(top: 1),
                padding: const EdgeInsets.only(right: 30, left: 30),
                width: double.infinity,
                height: 95,
                child: _currentPage == _numPages - 1
                    ? button2(
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
                                builder: (context) => const Welcome()),
                          );
                        },
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Welcome()),
                          );
                        })
                    : const Text(''),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
            ],
          )),
    );
  }
}
