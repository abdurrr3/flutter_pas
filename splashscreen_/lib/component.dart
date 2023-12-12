import 'package:flutter/material.dart';

Widget Category(String img, String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        img,
        width: 110,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        title,
      )
    ],
  );
}
