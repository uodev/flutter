void main(List<String> args) {
//bellekte yer ayırmaya yarar!!!!!!!
  Student student1 = Student(
    name: 'Uygar Ceylan',
    lesson: 'Veri Yapıları',
    schoolNumber: 1400,
  );
  Student student2 = Student.withOutLesson(
    name: 'Gökçe',
    schoolNumber: 50,
  );
  student1.printStudentInfo();
  student2.printStudentInfo();
}

class Student {
  //instance variable
  int? schoolNumber;
  String? name;
  String? lesson;

  Student({this.name, this.schoolNumber, this.lesson});
  //named constructor
  Student.withOutLesson({this.name, this.schoolNumber});

  void printStudentInfo() {
    print(
      'Öğrenci Adı: $name, Numarası: $schoolNumber, Aldığı Ders: ${lesson ?? 'Henüz Seçilmedi!'}',
    );
  }
}
