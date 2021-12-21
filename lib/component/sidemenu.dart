import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('ซื้อตั๋วโดยสาร',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.airport_shuttle,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.shopping_bag,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('ข้อเสนอพิเศษ',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.sticky_note_2,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('ข้อมูลส่วนตัว',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.document_scanner,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('พิมพ์ตั๋วโดยสาร',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.local_printshop,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
