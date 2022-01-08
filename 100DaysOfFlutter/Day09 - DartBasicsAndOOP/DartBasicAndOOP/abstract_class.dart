abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Square extends Shape {
  double edge;

  Square(this.edge);

  @override
  double calculateArea() {
    return edge * edge;
  }

  @override
  double calculatePerimeter() {
    return 4 * edge;
  }
}

class Circle extends Shape {
  //instance variable
  double r;

  //nesneye bağlı değil class variable
  static const pi = 3.14;
  Circle(this.r);
  @override
  double calculateArea() {
    return pi * r * r;
  }

  @override
  double calculatePerimeter() {
    return 2 * pi * r;
  }
}

void main(List<String> args) {
  Square square = Square(5.2);
  print(square.calculateArea());
  print(square.calculatePerimeter());

  Circle c1 = Circle(6);
  print(c1.calculateArea());
  print(c1.calculatePerimeter());
}
