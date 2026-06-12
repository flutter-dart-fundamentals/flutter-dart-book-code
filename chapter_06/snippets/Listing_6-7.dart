/* Named Constructors
Listing 6-7: Named constructors with initializer lists */

class Point {
  double x;
  double y;

  Point(this.x, this.y);

  Point.origin() : x = 0, y = 0;

  Point.fromList(List<double> coords)
      : x = coords[0], y = coords[1];
}

void main() {
  var p1 = Point(3, 4);
  var p2 = Point.origin();
  var p3 = Point.fromList([7, 8]);

  print('p1: (${p1.x}, ${p1.y})');
  print('p2: (${p2.x}, ${p2.y})');
  print('p3: (${p3.x}, ${p3.y})');
}

p1: (3, 4)
p2: (0, 0)
p3: (7, 8)
