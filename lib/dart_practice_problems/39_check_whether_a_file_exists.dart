import 'dart:io';

void main(List<String> args) {
  var filename = stdin.readLineSync();
  File(filename!).exists().then((x) => print(x));
}