import 'dart:io';

void main(List<String> args){
  var numbers = (stdin.readLineSync())?.split(' ');
  var sum = int.parse(numbers![0]) + int.parse(numbers[1]);
  if(sum >= 15 && sum <= 20){
    print(20);
  }else{
    print(sum);
  }
}