import 'package:flutter/material.dart';

class loading_page extends StatelessWidget {
  const loading_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AppBar
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading'),
      ),
      body: const Center(
        child: Text('loading_page'),
      ),
    );
  }
}
