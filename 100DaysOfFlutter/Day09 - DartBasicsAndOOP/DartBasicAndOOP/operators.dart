void main(List<String> args) {
  int number1 = 20;
  int number2 = 3;
  // print('Degerler toplami: ${number1 + number2}');
  // print('Degerler farki: ${number1 - number2}');
  // print('Degerler carpimi: ${number1 * number2}');
  // print('Degerler bolumu: ${number1 / number2}');
  // print('Degerler modu: ${number1 % number2}');

  //= atama operatorudur, karsilastirma ==, !=, >,<, <=,>=

  //number1 = number1 + 5;
  //yeni degeri = 25
  //kisa hali icin
  //number1 += 5;

  //postfix ve prefix

  //int number = 10;
  //print(number++); //postfix
  //print(++number); //prefix

  if (number1 > number2) {
    print('Number1 en buyuk');
  } else {
    print('Number2 en büyük');
  }

  String name = "Uygar";
  String name2 = "Eda";

  if (name == name2) {
    print('Aynı kişiler');
  } else {
    print('Farklı kişiler');
  }

  //mantıksal operatörler && ||
  int age = 22;
  if (age >= 18 && age < 65) {
    print('Sokaga cikabilirsiniz');
  } else {
    print('Yasak var!');
  }
}
