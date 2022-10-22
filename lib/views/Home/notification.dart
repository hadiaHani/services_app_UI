import 'package:flutter/material.dart';
import 'package:services_app_ui/views/Home/all_screens.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "الاشعارات",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screens()),
                );
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ))
        ],
      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: double.infinity,
            padding: const EdgeInsets.all(10),
            child: ListView(children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                height: 85,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                  ),
                  title: const Text(
                    "عنوان الاشعار",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: const Text(
                    'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Text(
                    "قبل ساعة",
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
            ]),
          )),
    );
  }
}
