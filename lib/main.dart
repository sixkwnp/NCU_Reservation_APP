import 'package:flutter/material.dart';
import 'package:ncu_reservation_app/page/splash.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // loginPage
    return const MaterialApp(
      home: Splash(),
    );
  }
}
