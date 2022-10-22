import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Offers/request_model.dart';
import 'package:services_app_ui/views/Offers/request_widgit.dart';

class CurrentRequest extends StatelessWidget {
  const CurrentRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: requestList.length,
        itemBuilder: (context, index) {
          return RequestWidgit(requestList[index]);
        });
  }
}
