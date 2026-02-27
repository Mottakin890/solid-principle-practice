import 'dart:math';

///Importance of Open or Closed Principle
///1. Existing working code still unchanged so due to apply new changes if any bug found we can easily revert this.
///2. Keep application more scalalble.
///3. Use abstractions(interface, abstraction, polymorphism) so code maintainability increases.

//! Wrong way or violation of Open or Closed Principle
class Shapes {
  String type;
  Shapes(this.type);
}

class AreaCalculator {
  double calculateArea(Shapes shape) {
    if (shape.type == 'circle') {
      return pi * 3.14;
    } else if (shape.type == 'rectangle') {
      return 4 * 5;
    } else if (shape.type == 'square') {
      return 4 * 4;
    }
    return 0;
  }
}

//* Right way for Open or Closed Principle
abstract interface class Shape {
  double calculateArea();
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Rectangle implements Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);
  @override
  double calculateArea() {
    return length * width;
  }
}

class Square implements Shape {
  double length;
  Square(this.length);
  @override
  double calculateArea() {
    return length * length;
  }
}

class CalculateArea {
  double calculateArea(Shape shape) {
    return shape.calculateArea();
  }
}

void main(List<String> args) {
  final CalculateArea area = CalculateArea();

  final circle = Circle(5);
  final rectangle = Rectangle(4, 6);
  final square = Square(4);

  print(area.calculateArea(circle));
  print(area.calculateArea(rectangle));
  print(area.calculateArea(square));
}
