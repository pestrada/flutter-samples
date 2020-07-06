import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('images/icon_pe.png'),
            ),
            Text('Paul Estrada',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+123456789',
                      style: TextStyle(
                          color: Colors.teal.shade900, fontSize: 20.0),
                    ),
                  )),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'contact@email.com',
                      style: TextStyle(
                          color: Colors.teal.shade900, fontSize: 20.0),
                    ),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
