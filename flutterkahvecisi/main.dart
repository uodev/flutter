import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Caveat"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage("assets/images/kahve.jpg"),
                ),
                Text(
                  "Flutter Kahvecisi",
                  style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.brown[900],
                  ),
                ),
                const Text(
                  "BİR FİNCAN UZAĞINIZDA",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white60,
                    fontFamily: "Courgette",
                  ),
                ),
                Container(
                  width: 200.0,
                  child: Divider(
                    height: 30.0,
                    color: Colors.brown[900],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.brown[900],
                  child: const ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white54,
                    ),
                    title: Text(
                      "info@flutterkahvecisi.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.brown[900],
                  child: const ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white54,
                    ),
                    title: Text(
                      "+90 555 555 55 55",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
