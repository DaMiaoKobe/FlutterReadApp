import 'dart:math';

import 'package:meta/meta.dart';

void main() {
  optionFunction(a: 1, b: 2);
  optionFunction(a: 1);
  optionFunction(b: 2);
  optionRequireFunc(b: 1);
//  optionFunction(1,2);
  var test = [1, 2, 3];
  test.forEach(printInt);
  var b = getInt(2);
  var a = (index) => index * 2;
// nonGetInt(getInt);
  var point = Point(1, 2);
//  var point2 = Point.fromJson({'x': 1, 'y': 2});
}

optionFunction({int a = 1, int b = 1}) {}

optionRequireFunc({int a = 1, @required int b}) {}

void printInt(int index) {
  print(index);
}

getInt(int index) {}

void nonGetInt(int index) {}

//    print("hello$i");
//  }
//  for (var i = 0; i < 4; i++) {

//  var bike = Bicycle(1, 2);
//  print(bike._gear);
//  print(bike);
//  print(Rectangle(origin: const Point(1, 2), width: 3, height: 4));
//  final geer = new DateTime.now();
//  print(geer);
//  double a = 1;
//  var a1 = 'Hello World';
//  var a2 = "Hello World";
//  print(a1);
//  print(a2);
//  var a4 = """
//  Hello World
//  Hello World
//  Hello World
//  """;
//  print(a1);
//  print(a4);
//  var m = "world";
//  print("Hello ${m}");
//  print("Hello " + m);
//  var m1 = "Hello \n World";
//  print(m1);
//  var m2 = r"Hello \n World";
//  print(m2);
//
//  /**
//   * List
//   */
//  var list = List();
//  var list1 = [1, 2, 3];
//  var list2 = const [1, 2, 3];
//  print(list1.length);
////  print(list1.removeLast());
////  print(list1);
//  list1.removeRange(0, 2);
////  list1.removeLast();
//  print(list1);
//  list1.removeAt(0);
//  print(list1);
//  print(list1);
//  list1.remove(3);
//  print(list1);
//  list1.add(4);
//  list1.addAll(list2);
//  print(list1);
//  print(list1);
//  print(list1.indexOf(0));
//  print(list1.toString());
//  print(list1);
//  print(list1.removeLast());
//  print(list1);
//
//  list1.removeWhere((item) => item == 3);
//  print(list1);
//
//  list1.removeWhere((item) {
//    return item
//        .toString()
//        .length == 3;
//  });
//
//  print(list1);
//
//  /**
//   * Map
//   */
//  var map = {
//    "key": "value",
//    "a": 1,
//    1: "223"
//  };
//  print(map);
//
//  var map1 = Map();
//  map1["1"] = "23";
//  map1["2"] = null;
//  print(map1);
//
//  var map2 = const{
//    "key": "value",
//    "a": 1,
//    1: "223"
//  };
//
//  print(map2);
//
//  /**
//   * Runes
//   */
//  var clapping = '\u{1f44f}';
//  print(clapping);
//  print(clapping.codeUnits);
//  print(clapping.runes.toList());
//  Runes input=
//  new Runes(
//      '\u2665 \u{1f605} \u{1f60e} \u{1f47b} \u{1f596} \u{1f44d}');
//  print(new String.fromCharCodes(input));
//
//  /**
//   * Symbols
//   */
//  # bar;
//}
//
//class Bicycle {
//  int cadence;
//  int speed;
//  int _gear = 0;
//  int get gear => _gear;
//
//  Bicycle(this.cadence, this.speed);
//
//  @override
//  String toString() {
//    return 'Bicycle: $_gear';
//  }
//
//  void addGear(int gear) {
//    _gear += gear;
//  }
//
//  void deGear(int gear) {
//    _gear -= gear;
//  }
//}
//
//class Rectangle {
//  Point origin;
//  int width;
//  int height;
//
//  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
//
//  @override
//  String toString() => 'Origin:({$origin.x},{$origin.y})';
//}
