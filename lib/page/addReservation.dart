import 'package:flutter/material.dart';

class addReservation extends StatelessWidget {
  const addReservation({Key? key}) : super(key: key);

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
            Color.fromARGB(255, 0, 4, 4),
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
