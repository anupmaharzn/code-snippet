import 'dart:math';

class Shape {
  double area() => 0.0;
}

class Circle implements Shape {
  final double _radius;

  Circle(this._radius); // Circle constructor vo

  @override
  double area() => pi * pow(this._radius, 2);
}

class Rectangle implements Shape {
  final double _height, _width;

  Rectangle(this._height, this._width); // Rectangle constructor vo

  @override
  double area() => this._height * this._width;
}

class Square implements Shape {
  final double _length;
  Square(this._length);
  @override
  double area() => this._length * this._length;
}

void main() {
  Shape circle = new Circle(5.0);
  Shape rectangle = new Rectangle(4.0, 3.0);
  Shape square = new Square(3.3);

  circle.area();
  rectangle.area();
  square.area();
  List<Shape> shapes = [circle, rectangle, square];

  shapes.forEach((shape) {
    print("This shape has an area of  ${shape.area()}");
  });
}
