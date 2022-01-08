void main(List<String> args) {
  int number = 5;
  print(number);
  double number2 = 5.2;

  String name = 'Uygar Ozturk';
  String name2 = 'Ceylan'; //yazıları tutan değişken

  bool isClicked = false; // true-false alır

  List<int> numbers = [1, 2, 3, 4, 5]; //int türünce veri tipi

  List mix = [2, 5.2, 'Uygar', true]; //dynamic veri tipi

  var username = 'uoceylann'; //=> var kendi türünü bulur

  //constants final const

  final String fullName = 'Uygar Ceylan';
  //fullName = 'Uygar'; final oldugu icin degismez
  const fullName2 = 'Uygar Ceylan';
  //fullName2 = 'Uygar'; const oldugu icin degismez

//runtime=> Kod çalıştırdığımız zaman
//compiletime => kodun derlendiği kısım

  final time = DateTime.now();
  print(time);

  // const time2 = DateTime.now();
  // print(time); => çalışmaz çünkü derlerken değeri değişmez!
}
