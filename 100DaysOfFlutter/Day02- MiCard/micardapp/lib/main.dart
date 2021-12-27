import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("assets/img/vesika.jpeg"),
              ),
              SizedBox(height: 10.0),
              Text(
                'Uygar Ceylan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Oooh Baby",
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Rajdhani",
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                width: 150.0,
                height: 1.0,
                color: Colors.white38,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    "+90 555 555 55 55",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontFamily: "Rajdhani",
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    "uygaroztcyln@gmail.com",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontFamily: "Rajdhani",
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
