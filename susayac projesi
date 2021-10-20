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
      title: 'Su Sayacı',
      theme: ThemeData(
        primarySwatch: Colors
            .indigo, // => bu rengin tonlarını da kullanır sadece lightBlue olarak kullanmaz!
      ),
      home: Sayac(
        isim: "İçilen Su",
      ),
    );
  }
}

class Sayac extends StatefulWidget {
  final String? isim;

  Sayac({this.isim});

  @override
  _SayacState createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  int sayi = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Sayaç State Başlatıldı");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Su Sayacı"),
      ),
      body: Center(
        child: Text("${widget.isim} sayısı: $sayi"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ekle(),
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
      ),
    );
  }

  void ekle() {
    setState(() {
      sayi++;
      print(sayi);
    });
  }
}
