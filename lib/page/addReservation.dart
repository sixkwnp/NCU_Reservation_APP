import 'package:flutter/material.dart';
import 'package:ncu_reservation_app/page/mainPage.dart';
import 'package:ncu_reservation_app/model/Task.dart';
import 'package:time_range_picker/time_range_picker.dart';

class addReservation extends StatefulWidget {
  @override
  State<addReservation> createState() => _addReservationState();
}

class _addReservationState extends State<addReservation> {
  String seat = "";
  bool selected = false;
  DateTime dateTime = DateTime.now();
  TimeRange time = TimeRange(
    startTime: const TimeOfDay(hour: 8, minute: 0),
    endTime: const TimeOfDay(hour: 9, minute: 0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 234, 233),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                "預約時段：",
                style: TextStyle(
                  height: 3,
                  fontSize: 32,
                  fontFamily: 'ChenYuluoyan-Thin',
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  const Text(
                    "日期：",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'ChenYuluoyan-Thin',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 30),
                          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text(
                            '${dateTime.year}/${dateTime.month}/${dateTime.day}'),
                        onPressed: () async {
                          final date = await pickDate();
                          if (date == null) {
                            return;
                          }
                          setState(() => dateTime = date);
                        },
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      const Text(
                        "時段：",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'ChenYuluoyan-Thin',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 30),
                          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text(
                            '${time.startTime.format(context)} - ${time.endTime.format(context)}'),
                        onPressed: () async {
                          final time = await pickTime();
                          if (time == null) {
                            return;
                          }
                          setState(
                            () => {
                              this.time = time,
                            },
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                "預約時段：",
                style: TextStyle(
                  height: 3,
                  fontSize: 32,
                  fontFamily: 'ChenYuluoyan-Thin',
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "A1"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "A1";
                          selected = true;
                        });
                      } else if (selected == true && seat == "A1") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "A1",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "A2"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "A2";
                          selected = true;
                        });
                      } else if (selected == true && seat == "A2") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "A2",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "A3"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "A3";
                          selected = true;
                        });
                      } else if (selected == true && seat == "A3") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "A3",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "A4"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "A4";
                          selected = true;
                        });
                      } else if (selected == true && seat == "A4") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "A4",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "A5"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "A5";
                          selected = true;
                        });
                      } else if (selected == true && seat == "A5") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "A5",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "B1"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "B1";
                          selected = true;
                        });
                      } else if (selected == true && seat == "B1") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "B1",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "B2"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "B2";
                          selected = true;
                        });
                      } else if (selected == true && seat == "B2") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "B2",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "B3"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "B3";
                          selected = true;
                        });
                      } else if (selected == true && seat == "B3") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "B3",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "B4"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "B4";
                          selected = true;
                        });
                      } else if (selected == true && seat == "B4") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "B4",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "B5"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "B5";
                          selected = true;
                        });
                      } else if (selected == true && seat == "B5") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "B5",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "C1"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "C1";
                          selected = true;
                        });
                      } else if (selected == true && seat == "C1") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "C1",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "C2"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "C2";
                          selected = true;
                        });
                      } else if (selected == true && seat == "C2") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "C2",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "C3"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "C3";
                          selected = true;
                        });
                      } else if (selected == true && seat == "C3") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "C3",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "C4"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "C4";
                          selected = true;
                        });
                      } else if (selected == true && seat == "C4") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "C4",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "C5"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "C5";
                          selected = true;
                        });
                      } else if (selected == true && seat == "C5") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "C5",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "D1"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "D1";
                          selected = true;
                        });
                      } else if (selected == true && seat == "D1") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "D1",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "D2"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "D2";
                          selected = true;
                        });
                      } else if (selected == true && seat == "D2") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "D2",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "D3"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "D3";
                          selected = true;
                        });
                      } else if (selected == true && seat == "D3") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "D3",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "D4"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "D4";
                          selected = true;
                        });
                      } else if (selected == true && seat == "D4") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "D4",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "D5"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "D5";
                          selected = true;
                        });
                      } else if (selected == true && seat == "D5") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "D5",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "E1"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "E1";
                          selected = true;
                        });
                      } else if (selected == true && seat == "E1") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "E1",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "E2"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "E2";
                          selected = true;
                        });
                      } else if (selected == true && seat == "E2") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "E2",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "E3"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "E3";
                          selected = true;
                        });
                      } else if (selected == true && seat == "E3") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "E3",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "E4"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "E4";
                          selected = true;
                        });
                      } else if (selected == true && seat == "E4") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "E4",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(10, 25),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: selected == false
                          ? const Color.fromARGB(255, 48, 201, 91)
                          : seat == "E5"
                              ? const Color.fromARGB(255, 255, 0, 0)
                              : const Color.fromARGB(255, 48, 201, 91),
                    ),
                    onPressed: () {
                      if (selected == false) {
                        setState(() {
                          seat = "E5";
                          selected = true;
                        });
                      } else if (selected == true && seat == "E5") {
                        setState(() {
                          seat = "";
                          selected = false;
                        });
                      }
                    },
                    child: const Text(
                      "E5",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ChenYuluoyan-Thin',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(100, 50),
                  side: const BorderSide(
                    color: Colors.black,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => {
                  if (seat == "")
                    {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("請選擇座位"),
                            actions: [
                              TextButton(
                                onPressed: () => {Navigator.pop(context)},
                                child: const Text("確認"),
                              ),
                            ],
                          );
                        },
                      ),
                    }
                  else
                    {
                      allTasks.add(
                        Task(
                          number: allTasks.length + 1,
                          seat: seat,
                          date:
                              '${dateTime.year}/${dateTime.month}/${dateTime.day}',
                          startTime:
                              time.startTime.toString().substring(10, 15),
                          endTime: time.endTime.toString().substring(10, 15),
                          content: '',
                        ),
                      ),
                      Navigator.pop(context),
                      // reload reservation page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const mainPage(),
                        ),
                      ),
                    }
                },
                child: const Text(
                  "確認送出",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'ChenYuluoyan-Thin',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );
  Future<dynamic?> pickTime() => showTimeRangePicker(
        context: context,
        interval: const Duration(minutes: 30),
      );
}
