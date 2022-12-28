import 'package:flutter/material.dart';
import 'package:ncu_reservation_app/page/addReservation.dart';

class reservationPage extends StatefulWidget {
  const reservationPage({Key? key}) : super(key: key);

  @override
  State<reservationPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<reservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 234, 233),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "預約時段",
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'ChenYuluoyan-Thin',
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                iconSize: 30,
                splashRadius: 20,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const addReservation(),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
