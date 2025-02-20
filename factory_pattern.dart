import 'dart:isolate';

abstract class Shape {
  revealMe();
}

class Circle extends Shape {
  @override
  revealMe() {
    print("You chose to print circle");
  }
}

class Rectangle extends Shape {
  @override
  revealMe() {
    print("You chose to print Rectangle");
  }
}

class Square extends Shape {
  @override
  revealMe() {
    print("You chose to print Square");
  }
}

//===============================

class CreateShape {
  static Shape getShape({required String shapeName}) {
    switch (shapeName) {
      case "Circle":
        return Circle();
      case "Rectangle":
        return Rectangle();
      case "Square":
        return Rectangle();
      default:
        throw Error();
    }
  }
}

void main() {
  Shape ShapeOne = CreateShape.getShape(shapeName: "Circle");
  Shape ShapeTwo = CreateShape.getShape(shapeName: "Rectangle");

  ShapeOne.revealMe();
  ShapeTwo.revealMe();
}
