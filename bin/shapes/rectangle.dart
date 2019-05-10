import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;

  Rectangle({
    this.origin = const Point(0, 0),
    this.width = 0,
    this.height = 0,
  });

  @override
  String toString() =>
      "Origin: (${origin.x}, ${origin.y}, width: $width, height: $height)";
}

main(List<String> args) {
  var rect = Rectangle(
    // origin: Point(10, 10),
    width: 50,
    height: 25,
  );
  print(rect);
}
