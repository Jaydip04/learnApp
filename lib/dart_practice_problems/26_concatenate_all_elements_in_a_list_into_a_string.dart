import 'dart:io';

void main(List<String> args){
  var number = (stdin.readByteSync().toString()).split(" ");
  var result = "";
  number.forEach((f){
    result += f;
  });
  print(result);
}