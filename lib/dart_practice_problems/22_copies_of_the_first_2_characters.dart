import 'dart:io';

void main(List<String> args){
  var value = stdin.readLineSync();
  var numbers = int.parse(stdin.readLineSync().toString());
  if (value!.length <= 2){
    print('${value*numbers}');
  }
  else {
    print('${(value.substring(0, 2))*numbers}');
  }

}