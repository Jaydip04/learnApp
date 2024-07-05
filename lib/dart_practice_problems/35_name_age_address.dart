import 'dart:io';

void main(List<String> args) {
  var name = stdin.readLineSync();
  var age = int.parse(stdin.readLineSync().toString());
  var address = stdin.readLineSync();
  print('$name\n$age\n$address');
}