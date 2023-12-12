// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';


Widget ListProfile(String img, String title) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 1
          )
        )
      ),
      height: 80,
      child: Row(
        children: [
          Image.asset(img),
          SizedBox(
            width: 16,
          ),
          Text(
            title
          )
        ],
      ),
    ),
  );
}