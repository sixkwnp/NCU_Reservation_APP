import 'package:flutter/material.dart';

class personalProfile extends StatefulWidget {
  const personalProfile({Key? key}) : super(key: key);

  @override
  _personalProfileState createState() => _personalProfileState();
}

class _personalProfileState extends State<personalProfile> {
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
        ),
      ),
    );
  }
}
