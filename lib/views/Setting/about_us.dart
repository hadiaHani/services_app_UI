import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ))
          ],
          centerTitle: true,
          title: const Text(
            "نبذة عنا",
            style: TextStyle(color: Colors.black),
          ),
          //  backgroundColor: Colors.grey[400],
        ),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: const EdgeInsets.only(top: 5, right: 2),
              margin: const EdgeInsets.only(
                  right: 15, left: 15, bottom: 15, top: 5),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: const Text(
                      "من نحن ؟",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    " هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد ",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(.6), fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: const Text(
                      "لماذا نحن ؟",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Expanded(
                      child: Text(
                    """
هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.
هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.
 هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.
 هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.
"""

                    //    overflow: TextOverflow.ellipsis,
                    ,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(.6), fontSize: 12),
                  ))
                ],
              ),
            )));
  }
}
