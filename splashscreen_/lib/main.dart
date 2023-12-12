// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:splashscreen_/bottomnav/bottomcustom.dart';
import 'package:splashscreen_/detail/detail.dart';
import 'package:splashscreen_/inspirasi/inspirasi.dart';
import 'package:splashscreen_/keranjang.dart';
import 'package:splashscreen_/profile/provile.dart';
import 'package:splashscreen_/splash.dart';
import 'package:splashscreen_/wishlist/wishlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  Splash(),
    );
  }
}

