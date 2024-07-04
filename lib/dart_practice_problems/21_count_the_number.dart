import 'dart:io';

void main(List<String> args) {
  int count = 0;
  var numberList = (stdin.readLineSync())?.split(' ');
  numberList!.forEach((f) {
    if (int.parse(f) == 4) {
      count += 1;
    }
  });
  print(count);
}
// Output : 4
// 1