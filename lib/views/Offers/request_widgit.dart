import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Offers/request_model.dart';
import 'package:services_app_ui/views/Offers/technicians_offers.dart';

class RequestWidgit extends StatelessWidget {
  MaterialColor green = Colors.green;
  Req request;
  RequestWidgit(this.request, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
      padding: const EdgeInsets.all(10),
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
      height: 230,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 5, left: 5),
                margin: const EdgeInsets.only(right: 5, left: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
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
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                width: 50,
                child: Image.asset(request.img),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                request.services,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                request.time,
                style: const TextStyle(
                    color: Colors.grey,
                    fontFamily: "DIN Next LT W23 ",
                    fontSize: 12),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(request.date,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: "DIN Next LT W23 ",
                      fontSize: 12))
            ],
          ),
          Container(
            padding: const EdgeInsets.only(right: 60, top: 15),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(Icons.edit, color: green),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  request.number,
                  style: const TextStyle(
                      color: Colors.black,
                      fontFamily: "DIN Next LT W23 ",
                      fontSize: 12),
                ),
                const SizedBox(
                  width: 80,
                ),
                Icon(Icons.admin_panel_settings_outlined, color: green),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  "عدد المتقدمين",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "DIN Next LT W23 ",
                      fontSize: 12),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  request.numOfPeaple,
                  style: const TextStyle(
                      color: Colors.black,
                      fontFamily: "DIN Next LT W23 ",
                      fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 60, top: 15),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: const [
                Text(
                  "الوقت المتبقي لاستلام العروض",
                  style: TextStyle(color: Colors.black, fontSize: 8),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "15 دقيقة ",
                  style: TextStyle(color: Colors.black, fontSize: 8),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 12),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(12)),
                  child: MaterialButton(
                      child: const Text(
                        " مشاهدة عروض الفنيين",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return const TechniciansOffers();
                        }));
                      }),
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
                        " إلغاء",
                        style: TextStyle(color: green, fontSize: 12),
                      ),
                      onPressed: () {}),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
