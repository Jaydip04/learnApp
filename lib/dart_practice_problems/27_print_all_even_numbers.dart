import 'dart:io';

void main() {
  List<int> numbers = [
    10, 20, 15, 237, 34, 56, 78, 89, 123, 246, 258, 237, 12, 34, 56, 78, 90, 24
  ];

  for (int number in numbers) {
    if (number == 237) {
      break;
    }
    if (number % 2 == 0) {
      print(number);
    }
  }
}