import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Offers/offer.dart';
import 'package:services_app_ui/views/Offers/offer_screen.dart';
import 'package:services_app_ui/views/Offers/offer_widgit.dart';

class TechniciansOffers extends StatelessWidget {
  const TechniciansOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return const OfferScreen();
                  }));
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ))
          ],
          centerTitle: true,
          title: const Text(
            " عروض الفنيين ",
            style: TextStyle(
                fontFamily: "DIN Next LT W23 ",
                fontSize: 17,
                color: Colors.black),
          ),
        ),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(right: 85),
                  child: Row(
                    children: const [
                      Text(
                        "الوقت المتبقي لاستلام العروض",
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "15 دقيقة",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: allOffers.length,
                    itemBuilder: (context, index) {
                      return OfferWidgit(allOffers[index]);
                    }),
              ]),
            )));
  }
}
