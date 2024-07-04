import 'dart:io';

void main(){
  var sum = 0;
  dynamic n = stdin.readLineSync();
  var numberList = [n,n*2,n*3];
  for (var x in numberList){
    sum += int.parse(x);
  }
  print(sum);
}
// Output: 1
// 123
// Output: 2
// 246
// Output: 3
// 369
// Output: 4
// 492