import 'dart:io';

void main(List<String> args){
  var sum = 0;
  var numbers = (stdin.readLineSync())?.split(' ');
  numbers = numbers?.sublist(0, 3);
  numbers?.forEach((f){
    int.parse(f);
    sum += int.parse(f);
  });
  if(numbers![0] == numbers[1] && numbers[1] == numbers[2] && numbers[0] == numbers[2]) {
    print(3*sum);
  }
  else {
    print(sum);
  }
}
// Output ; 1 2 3
// 6