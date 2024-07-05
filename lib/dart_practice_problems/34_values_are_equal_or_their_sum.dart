import 'dart:io';

void main(List<String> args) {
  var numbers = (stdin.readLineSync())?.split(' ');
  if (int.parse(numbers![0]) == int.parse(numbers[1]) || int.parse(numbers[0]) - int.parse(numbers[1]) == 5 || int.parse(numbers[0]) + int.parse(numbers[1]) == 5 ) {
    print(true);
  }
  else {
    print(false);
  }
}