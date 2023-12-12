import 'package:flutter/material.dart';
import 'package:splashscreen_/bottomnav/bottomcustom.dart';

import 'home.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Global_content()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Column(
                  children: [
                    Image.asset('splashlogo.png'),
                    Text(
                        'Creating a better everyday life\nfor the many people.', textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
