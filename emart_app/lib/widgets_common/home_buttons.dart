import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtons({width, heigth, icon, String? title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Image.asset(
            icon,
            width: 26,
          ),
          10.heightBox,
          title!.text.fontFamily(semibold).color(darkFontGrey).make(),
        ],
      )
    ],
  ).box.rounded.shadowSm.white.size(width, heigth).make();
}
