import 'package:application/component/sidemenu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SizedBox(
        width: 10000.0,
        height: 50,
        child: Card(
          color: Colors.green[50],
          child: Text(
            'เข้าสู่ระบบ',
            style: TextStyle(
              color: Colors.green[900],
              fontSize: 15,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text(
          'ติดตามพัสดุ',
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue[300]),
          padding:
              MaterialStateProperty.all(EdgeInsets.fromLTRB(20, 20, 20, 20)),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/green_bus.jpg"),
          ]),
        ),
      )
    ]);
  }
}
