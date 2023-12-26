import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

// ignore: avoid_types_as_parameter_names, non_constant_identifier_names
Widget bgWidget(Widget? child, {Scaffold}) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imgBackground), fit: BoxFit.fill)),
    child: child,
  );
}
