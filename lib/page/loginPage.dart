// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:ncu_reservation_app/page/mainPage.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                top: 60.0,
              ),
              child: Image(
                image: AssetImage("assets/Images/sitting-reading.png"),
                height: 250,
                width: 300,
              ),
            ),
            SizedBox(
              height: 20.64,
              width: MediaQuery.of(context).size.width,
              child: CustomPaint(
                painter: CurvePainter(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 40.0,
                left: 40.0,
                right: 40.0,
                bottom: 0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  labelText: "帳號",
                  hintText: "請輸入您的帳號",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 15,
                bottom: 0,
              ),
              child: TextField(
                obscureText: passenable,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  labelText: "密碼",
                  hintText: "請輸入您的密碼",
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        if (passenable == true) {
                          passenable = false;
                        } else {
                          passenable = true;
                        }
                      });
                    },
                    padding: const EdgeInsets.only(
                      right: 15.0,
                    ),
                    alignment: Alignment.centerRight,
                    constraints: const BoxConstraints(),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Icon(
                      passenable == true
                          ? Icons.remove_red_eye
                          : Icons.password,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(
                right: 20.0,
              ),
              child: TextButton(
                onPressed: () => {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      title: Text("很抱歉"),
                      content: Text("此功能尚未實裝...，敬請期待"),
                    ),
                  ),
                },
                child: const Text(
                  "忘記密碼？",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Container(
              height: 57,
              width: 136,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // goto mainPage
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const mainPage(),
                    ),
                  );
                },
                child: const Text(
                  "登入",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.grey[500]!;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1.5;

    var path = Path();

    path.moveTo(0, size.height);
    path.quadraticBezierTo(size.width / 2, -50, size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
