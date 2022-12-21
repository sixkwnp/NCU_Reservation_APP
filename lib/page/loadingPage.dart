// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class loadingPage extends StatelessWidget {
  const loadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF27ECE0),
            Colors.white,
          ],
        )),
        child: const Center(
          child: Text("Hello"),
        ),
      )),
    );
  }
}
