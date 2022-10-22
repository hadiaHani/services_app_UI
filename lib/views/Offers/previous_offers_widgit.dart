import 'package:flutter/material.dart';

import 'package:services_app_ui/views/Offers/offer.dart';
import 'package:services_app_ui/views/Offers/offer_widgit.dart';

class PreviousOffers extends StatelessWidget {
  const PreviousOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allOffers.length,
        itemBuilder: (context, index) {
          return OfferWidgit(allOffers[index]);
        });
  }
}
