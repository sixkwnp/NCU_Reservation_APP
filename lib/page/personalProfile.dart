import 'package:flutter/material.dart';
import 'package:ncu_reservation_app/page/loginPage.dart';

class personalProfile extends StatefulWidget {
  const personalProfile({Key? key}) : super(key: key);

  @override
  _personalProfileState createState() => _personalProfileState();
}

class _personalProfileState extends State<personalProfile> {
  @override
  void initState() {
    super.initState();
    getProfile();
  }

  getProfile() {
    // TODO: get profile from database
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 223, 234, 233),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 40,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "王小明",
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'ChenYuluoyan-Thin',
                                  ),
                                ),
                                Text(
                                  "資訊工程學系 二年級",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'ChenYuluoyan-Thin',
                                  ),
                                ),
                                Text(
                                  "110XXXXXX",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'ChenYuluoyan-Thin',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      const Text(
                        "懲罰時間： 0 小時",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'ChenYuluoyan-Thin',
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () => {
                            showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                title: Text("很抱歉"),
                                content: Text("此功能尚未實裝...，敬請期待"),
                              ),
                            ),
                          },
                          child: const Text("編輯個人資料"),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const loginPage(),
                              ),
                            );
                          },
                          child: const Text("登出"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.grey[200],
                        child: Column(
                          children: [
                            const Text(
                              "過去預約紀錄",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 2 -
                                  kBottomNavigationBarHeight -
                                  30,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                physics: const BouncingScrollPhysics(),
                                child: Wrap(
                                  direction: Axis.vertical,
                                  spacing: 10,
                                  children: const <Widget>[
                                    // get data from json
                                    Text(
                                        "2021/10/10 10:00 - 11:00, 1 小時, 預約 A2"),
                                    Text(
                                        "2021/10/10 10:00 - 11:00, 1 小時, 預約 A2"),
                                    Text(
                                        "2021/10/10 10:00 - 11:00, 1 小時, 預約 A2"),
                                    Text(
                                        "2021/10/10 10:00 - 11:00, 1 小時, 預約 A2"),
                                    Text(
                                        "2021/10/10 10:00 - 11:00, 1 小時, 預約 A2"),
                                    Text(
                                        "2021/10/10 10:00 - 11:00, 1 小時, 預約 A2"),
                                    Text(
                                        "2021/10/10 10:00 - 11:00, 1 小時, 預約 A2"),
                                    Text(
                                        "2021/10/10 10:00 - 11:00, 1 小時, 預約 A2"),
                                    Text(
                                        "2021/10/10 10:00 - 11:00, 1 小時, 預約 A2"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
