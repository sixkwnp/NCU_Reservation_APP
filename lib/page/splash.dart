import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ncu_reservation_app/page/loginPage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // generate a random number between 500 and 1500
    Random random = Random();
    int randomNumber = random.nextInt(1000) + 500;

    Future.delayed(Duration(milliseconds: randomNumber), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const loginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 234, 233),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.auto_stories,
              size: 40,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              '大 K 書家',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'ChenYuluoyan-Thin',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
