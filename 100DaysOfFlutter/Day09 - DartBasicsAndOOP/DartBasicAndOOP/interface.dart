abstract class FoodPre {
  void cook();
}

abstract class ExamPre {
  void makeTest();
}

abstract class Study {
  void doHomework();
}

abstract class EatFood {
  void eat();
}

class Student implements Study, EatFood {
  @override
  void doHomework() {
    // TODO: implement doHomework
  }

  @override
  void eat() {
    // TODO: implement eat
  }
}

class Shef implements FoodPre {
  @override
  void cook() {
    // TODO: implement cook
  }
}
