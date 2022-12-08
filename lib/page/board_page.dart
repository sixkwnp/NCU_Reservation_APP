import 'package:flutter/material.dart';

class board_page extends StatelessWidget {
  const board_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Board'),
      ),
      body: const Center(
        child: Text('board_page'),
      ),
    );
  }
}
