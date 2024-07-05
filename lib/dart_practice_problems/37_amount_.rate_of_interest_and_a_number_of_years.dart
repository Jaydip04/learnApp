import 'dart:io';

import 'dart:math';

void main(List<String> args) {
  var amount = double.parse(stdin.readLineSync().toString());
  var interest = double.parse(stdin.readLineSync().toString());
  var years = double.parse(stdin.readLineSync().toString());
  print(amount*(pow((1+(0.01*interest)), years)));
}