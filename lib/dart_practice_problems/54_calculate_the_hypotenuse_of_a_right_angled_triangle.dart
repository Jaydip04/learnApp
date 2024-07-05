import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Enter length of first side:\t');
  var side1 = double.parse(stdin.readLineSync().toString());
  stdout.write('Enter length of second side:\t');
  var side2 = double.parse(stdin.readLineSync().toString());
  var hypt = sqrt(pow(side1, 2) + pow(side2, 2));
  print('The hypotenuse of a right angled triangle is: ${hypt}');
}