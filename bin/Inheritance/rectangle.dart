import 'shape.dart';

class Rect extends Shape {
  Rect(this.width, this.height);
  double width;
  double height;

  @override
  double getArea() {
    return width * height;
  }
}
