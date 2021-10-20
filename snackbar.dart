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
      title: 'Snackbar Example',
      theme: ThemeData(
        primarySwatch: Colors
            .indigo, // => bu rengin tonlarını da kullanır sadece lightBlue olarak kullanmaz!
      ),
      home: const Mesaj(),
    );
  }
}

class Mesaj extends StatelessWidget {
  const Mesaj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Snackbar")),
      ),
      body: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text(
            "Hoş Geldiniz!",
            style: TextStyle(
              color: Colors.amber,
              letterSpacing: 2.0,
            ),
          )));
        },
        child: const Text("Mesaj Ver"),
      ),
    );
  }
}
