


import 'package:flutter/cupertino.dart';

void main() {
  optionFunction(a: 1, b: 2);
  optionFunction(a: 1);
  optionFunction(b: 2);
  optionRequireFunc(b: 1);
//  optionFunction(1,2);
  var test = [1, 2, 3];
  test.forEach(printInt);
}

optionFunction({int a = 1, int b = 1}) {}

optionRequireFunc({int a = 1, @required int b}) {}

void printInt(int index) {
  print(index);
}