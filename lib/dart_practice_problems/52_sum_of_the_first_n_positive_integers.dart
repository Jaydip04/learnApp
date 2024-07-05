import 'dart:io';

void main() {
  var number = int.parse(stdin.readLineSync().toString());
  var sum = 0;
  for (var x=1; x<=number; x++) {
    sum += x;
  }
  print('The sum is ${sum}');

}