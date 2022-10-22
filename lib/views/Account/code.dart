import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:services_app_ui/views/Account/registration_done_widgit.dart';
import 'package:services_app_ui/views/widgits.dart';

class Code extends StatelessWidget {
  const Code({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
            centerTitle: true,
            title: const Text(
              " تأكيد الحساب",
              style: TextStyle(color: Colors.black, fontSize: 17),
            )),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                child: const Text(
                  'أدخل الرمز الذي تم ارساله إلى رقم الجوال',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                child: const Text(
                  ' 07503755107 964+',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: VerificationCode(
                    keyboardType: TextInputType.number,
                    underlineUnfocusedColor: Colors.grey,
                    underlineColor: Colors.grey,
                    length: 5,
                    digitsOnly: true,
                    fullBorder: true,
                    itemSize: 60,
                    cursorColor: const Color(0xff2FA09C),
                    onCompleted: (String value) {},
                    onEditing: (bool value) {},
                  ),
                ),
              ),
              button(
                  top: 40,
                  bottom: 5,
                  width: double.infinity,
                  background: Colors.green.withOpacity(.7),
                  title: " تأكيد",
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const DoneRegis();
                    }));
                  },
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const DoneRegis();
                    }));
                  }),
            ],
          ),
        ));
  }
}
