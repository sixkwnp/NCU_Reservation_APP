import 'package:flutter/material.dart';
import 'package:ncu_reservation_app/page/loadingPage.dart';
import 'package:ncu_reservation_app/page/loginPage.dart';
import 'package:ncu_reservation_app/page/boardPage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: BottomNavigationController(),
      ),
    );
  }
}

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const boardPage(),
    const loadingPage(),
    const loginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '布告欄',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '預約系統',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: '登入',
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
