// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';

Widget ImgDetail(String imag) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Image.asset(imag),
        SizedBox(width: 6,)
      ],
    ),
  );
}
