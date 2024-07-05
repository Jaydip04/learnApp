import 'dart:io';

import 'dart:math';

void main(List<String> args) {
  var pos_1 = (stdin.readLineSync())?.split(' ');
  var pos_2 = (stdin.readLineSync())?.split(' ');
  var distance = pow(double.parse(pos_1![0]) - double.parse(pos_2![0]), 2) + pow(double.parse(pos_1[1]) - double.parse(pos_2[1]), 2);
  print(sqrt(distance));
}