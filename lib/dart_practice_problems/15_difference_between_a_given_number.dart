import 'dart:io';

void main(List<String> args) {
  var number = double.parse(stdin.readByteSync().toString());
  double result = number - 17;
  var diff = result.abs();
  if (number > 17) {
    print(2*diff);
  }
  else {
    print(result);
  }
}
// Output : 17
// 64.0