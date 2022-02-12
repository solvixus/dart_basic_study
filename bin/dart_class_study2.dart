import 'Inheritance/circle.dart';
import 'Inheritance/rectangle.dart';
import 'Inheritance/shape.dart';

void main() {
  Circle circle = Circle(3);
  Rect rect = Rect(4, 5);
  printarea(circle);
  printarea(rect);
}

void printarea(Shape shape) {
  print('면적 : ${shape.getArea()}');
}
