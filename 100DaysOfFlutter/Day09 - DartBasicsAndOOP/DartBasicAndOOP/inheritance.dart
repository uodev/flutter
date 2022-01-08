class Person {
  String? name;
  int age;
  int? height;
  int? weight;

  Person(this.name, this.age);

  void classType() {
    print('Person classı');
  }
}

class Student extends Person {
  int? schoolNumber;
  String? lesson;
  int? note;

  void study() {}

  Student(String name, int age) : super(name, age);

  @override
  void classType() {
    print('Student classı');
  }
}

void main(List<String> args) {
  Student s1 = Student('Eda', 20);
  Person p1 = Person('Uygar', 20);

  Person p2 = Student('a', 15); //upcasting

  List<Person> students = []; //upcasting
  students.add(s1);
  students.add(p1);

  print(calculateDateofBirth(s1));
  print(calculateDateofBirth(p1));
  print(calculateDateofBirth(p2));
}

//polimorfizm
int calculateDateofBirth(Person person) {
  return 2022 - person.age;
}
