import 'package:flutter/material.dart';

Widget slide(
        {double width = 300,
        double height = 300,
        required Widget image,
        double sizeBox = 20,
        double top = 5,
        double right = 18,
        double left = 18,
        String title = "",
        String subTtitle = "",
        double titleFontSize = 25,
        double subTitleFontSize = 14,
        Color titleColor = Colors.green,
        Color subtitleColor = Colors.grey,
        FontWeight fontWeight = FontWeight.bold,
        TextAlign textAlign = TextAlign.center,
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center}) =>
    Column(
      //    mainAxisAlignment: mainAxisAlignment,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 130),
          child: image,
        ),
        SizedBox(
          height: sizeBox,
        ),
        Container(
          padding: EdgeInsets.only(top: top),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: "Cairo",
                fontSize: titleFontSize,
                fontWeight: fontWeight,
                color: titleColor),
            textAlign: textAlign,
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: right, left: left),
          child: Text(
            subTtitle,
            style: TextStyle(
              fontSize: subTitleFontSize,
              color: subtitleColor,
              fontFamily: "Cairo",
            ),
            textAlign: textAlign,
          ),
        )
      ],
    );

Widget button(
        {required Color background,
        required VoidCallback onTap,
        required String title,
        Alignment alignment = Alignment.bottomCenter,
        double circular = 8,
        double width = double.infinity,
        double bottom = 80,
        double height = 60,
        double sizedBox = 10,
        double fontSize = 17,
        Widget icon = const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        required VoidCallback onPressed,
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
        double left = 10,
        double top = 10,
        double right = 10}) =>
    Container(
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(circular)),
      width: width,
      margin:
          EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
      height: height,
      child: InkWell(
        onTap: onTap,
        child: MaterialButton(
            onPressed: onPressed,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  //  fontWeight: FontWeight.bold,
                  fontSize: fontSize),
            )),
      ),
    );
Widget button2(
        {required Color background,
        required String title,
        required VoidCallback onTap,
        required VoidCallback function,
        Alignment alignment = Alignment.bottomCenter,
        double circular = 8,
        double width = double.infinity,
        double bottom = 80,
        double height = 60,
        double sizedBox = 10,
        Color color = Colors.white,
        Widget icon = const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
        double left = 10,
        double top = 10,
        double fontSize = 17,
        double right = 10}) =>
    Container(
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(circular)),
      width: width,
      margin: EdgeInsets.only(bottom: bottom, left: left, right: right),
      height: height,
      child: InkWell(
        onTap: onTap,
        child: MaterialButton(
            onPressed: function,
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: color,
                      /*fontWeight: FontWeight.bold,*/ fontSize: fontSize),
                ),
                SizedBox(
                  width: sizedBox,
                ),
                icon,
              ],
            )),
      ),
    );
Widget button3(
        {Color background = Colors.white,
        required String title,
        //   Alignment alignment = Alignment.bottomCenter,
        double circular = 8,
        double width = double.infinity,
        double bottom = 80,
        double height = 60,
        double sizedBox = 10,
        double fontSize = 17,
        required VoidCallback onPressed,
        required VoidCallback onTap,
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
        double left = 10,
        double top = 140,
        double right = 10}) =>
    Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(8)),
      width: width,
      margin: EdgeInsets.only(top: top, left: left, right: right),
      height: 60,
      child: InkWell(
          onTap: onTap,
          child: MaterialButton(
            minWidth: double.infinity,
            onPressed: onPressed,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: fontSize),
            ),
          )),
    );

Widget customTextFormField({
  required String title,
  double circular = 1,
  double borderWidth = 0,
  String hint = "",
  String label = "",
  double size = 17,
  double fontSize = 17,
  double hintfontSize = 14,
  Color borderColor = Colors.white,
  Color titleColor = Colors.black,
  Color labelColor = Colors.black,
  TextInputType type = TextInputType.name,
  Text prefix = const Text(
    " ",
    style: TextStyle(color: Colors.black),
  ),
}) =>
    Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          margin: const EdgeInsets.only(top: 2, right: 10),
          child: Text(
            title,
            style: TextStyle(color: titleColor, fontSize: size),
          ),
        ),
        Container(
            height: 70,
            margin:
                const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 10),
            padding:
                const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 10),
            decoration: BoxDecoration(
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
              /* border:
                  Border.all(color: const Color.fromARGB(248, 226, 215, 215)),*/
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            // height: 200,
            child: TextFormField(
                keyboardType: type,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: borderWidth, color: borderColor),
                    borderRadius: BorderRadius.circular(circular),
                  ),
                  prefix: prefix,
                  hintText: hint,
                  hintStyle: TextStyle(
                    fontSize: hintfontSize,
                    color: Colors.grey,
                  ),
                  label: Text(
                    label,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: labelColor,
                    ),
                  ),
                ))),
      ],
    );

Widget listTileWidgit({
  required String title,
  required Widget trailing,
  required Widget leading,
  required VoidCallback onPressed,
}) =>
    Container(
      height: 64,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 243, 238, 238)))),
      child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 17),
          ),
          trailing: IconButton(
            onPressed: onPressed,
            icon: trailing,
            color: Colors.green.withOpacity(.3),
          ),
          leading: leading),
    );
