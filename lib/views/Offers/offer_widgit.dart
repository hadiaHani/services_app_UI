import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:services_app_ui/views/Offers/details.dart';
import 'package:services_app_ui/views/Offers/offer.dart';

class OfferWidgit extends StatefulWidget {
  Offer offer;
  Function? function;

  OfferWidgit(this.offer, [this.function]);

  @override
  State<OfferWidgit> createState() => _OfferWidgitState();
}

class _OfferWidgitState extends State<OfferWidgit> {
  MaterialColor green = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(boxShadow: [
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
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      height: 140,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30.0,
                backgroundImage: AssetImage(widget.offer.image),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.offer.name,
                style: const TextStyle(
                    fontFamily: "DIN Next LT W23 ", fontSize: 15),
              ),
              const SizedBox(
                width: 40,
              ),
              RatingBar.builder(
                  initialRating: 5,
                  maxRating: 5,
                  itemSize: 20,
                  itemCount: 5,
                  itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                  onRatingUpdate: (rating) {}),
              const SizedBox(
                width: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.green.withOpacity(.4),
                child: IconButton(
                    onPressed: () {
                      widget.offer.isFavorit = !widget.offer.isFavorit;
                      setState(() {});
                      if (widget.function != null) {
                        widget.function!();
                      }
                    },
                    icon: widget.offer.isFavorit
                        ? const Icon(Icons.favorite, color: Colors.red)
                        : Icon(Icons.favorite_border,
                            color: Colors.black.withOpacity(.5))),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(right: 40),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Icon(Icons.watch_later_outlined, color: green.withOpacity(.7)),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.offer.time,
                  style: TextStyle(
                      color: green,
                      fontFamily: "DIN Next LT W23 ",
                      fontSize: 10),
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(Icons.money, color: green.withOpacity(.7)),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  widget.offer.money,
                  style: TextStyle(
                      color: green,
                      fontFamily: "DIN Next LT W23 ",
                      fontSize: 10),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                      border: Border.all(color: green, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: MaterialButton(
                      child: Text(
                        "عرض الملف",
                        style: TextStyle(
                            color: green,
                            fontFamily: "DIN Next LT W23 ",
                            fontSize: 12),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return const Details();
                        }));
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
