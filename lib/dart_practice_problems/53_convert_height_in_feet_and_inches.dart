import 'dart:io';

void main() {
  print('Enter the size:\t');
  var size = double.parse(stdin.readLineSync().toString());
  print('Choose any one:\n1. Feet to Centimeter\n2. Inches to Centimeter');
  var choice = int.parse(stdin.readLineSync().toString());
  if (choice == 1) {
    print('The size in Centimeter is: ${size * 30.48}');
  } else if (choice == 1) {
    print('The size in Centimeter is: ${size * 2.54}');
  }
}