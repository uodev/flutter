void main(List<String> args) {
  int pointA = 10;
  int pointB = 5;
  if (pointA > pointB) {
    print('A takimi kazandi');
  } else if (pointB == pointA) {
    print('Dostluk kazandi');
  } else {
    print('B takimi kazandi');
  }

  //ternary operator
  String name = 'Uygar';

  String name2 = 'Çağla';

  if (name == name2) {
    print('Aynı kişiler');
  } else {
    print('Farklı kişiler');
  }

  name == name2 ? print('Aynı kişiler') : print('Farklı Kişiler');

  //nullsa ?
  int? number;
  print(number ?? 0);

  //switch case
  String note = 'AA';
  switch (note) {
    case 'AA':
      print('Notunuz 90-100 aralığındadır!');
      break;

    case 'BB':
      print('Notunuz 80-90 aralığındadır!');
      break;

    case 'CC':
      print('Notunuz 70-80 aralığındadır!');
      break;

    default:
      print('Notunuz yok!');
  }
}
