void main(List<String> args) {
  String name = 'Uygar';
  name = 'İrem';

  const numbers = [1, 2, 3];
  const numbers2 = [1, 2, 3];

  numbers == numbers2 ? print('eşit') : print('Eşit değil');

  const Student s1 = Student('Uygar', 20);
  var s2 = const Student('Uygar', 20);

  s1 == s2 ? print('eşit') : print('Eşit değil');
}

class Student {
  final int number;
  final String name;

  const Student(this.name, this.number);
}
