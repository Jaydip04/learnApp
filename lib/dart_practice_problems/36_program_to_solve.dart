import 'dart:io';

void main(List<String> args) {
  var x = int.parse(stdin.readLineSync().toString());
  var y = int.parse(stdin.readLineSync().toString());
  print((x+y)*(x+y));
}