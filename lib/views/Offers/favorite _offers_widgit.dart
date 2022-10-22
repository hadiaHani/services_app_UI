import 'package:flutter/material.dart';

import 'package:services_app_ui/views/Offers/offer.dart';
import 'package:services_app_ui/views/Offers/offer_widgit.dart';

class FavoriteOffers extends StatefulWidget {
  const FavoriteOffers({Key? key}) : super(key: key);

  @override
  State<FavoriteOffers> createState() => _FavoriteOffersState();
}

class _FavoriteOffersState extends State<FavoriteOffers> {
  rebuildFavouritePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allOffers.where((element) => element.isFavorit).length,
        itemBuilder: (context, index) {
          return OfferWidgit(
              allOffers.where((element) => element.isFavorit).toList()[index],
              rebuildFavouritePage);
        });
  }
}
