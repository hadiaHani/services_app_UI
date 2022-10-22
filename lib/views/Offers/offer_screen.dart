import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/notification.dart';
import 'package:services_app_ui/views/Offers/current_requests_widgit.dart';
import 'package:services_app_ui/views/Offers/favorite%20_offers_widgit.dart';
import 'package:services_app_ui/views/Offers/previous_offers_widgit.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
                elevation: 2,
                backgroundColor: Colors.white,
                actions: [
                  Container(
                    padding: const EdgeInsets.only(left: 5),
                    width: 110,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.green.withOpacity(.7),
                          ),
                        ),
                        Stack(children: [
                          Container(
                            height: 17,
                            width: 17,
                            margin: const EdgeInsets.only(right: 3, top: 11),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.green.withOpacity(.7)),
                                borderRadius: BorderRadius.circular(12)),
                            child: Container(
                              height: 80,
                              width: double.infinity,
                              margin: const EdgeInsets.only(right: 5, top: 3),
                              child: const Text("4",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 10,
                                      fontFamily: "DIN Next LT W23 ")),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Notifications()),
                              );
                            },
                            icon: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.green.withOpacity(.7),
                              size: 30,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
                bottom: const TabBar(
                    indicatorColor: Colors.green,
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text(
                          " طلباتي الحالية",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "العروض المفضلة",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "العروض السابقة",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ])),
            body: const TabBarView(children: [
              CurrentRequest(),
              //  CurrentRequest(),
              FavoriteOffers(),
              PreviousOffers()
            ]),
          )),
    );
  }
}
