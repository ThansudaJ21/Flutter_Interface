import 'package:application/component/sidemenu.dart';
import 'package:application/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Green bus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Green bus'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text("GREENBUS", style: TextStyle(fontFamily: 'DSN')),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_drop_down_circle),
              tooltip: 'Show Snackbar',
              onPressed: () {},
            ),
          ]),
      drawer: SideMenu(),
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.airport_shuttle, color: Colors.green[900]),
            label: 'ซื้อตั๋วโดยสาร',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.green[900]),
            label: 'ข้อมูลการเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner, color: Colors.green[900]),
            label: 'ข้อมูลส่วนตัว',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_printshop, color: Colors.green[900]),
            label: 'พิมพ์ตั๋วโดยสาร',
          )
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green[900],
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
