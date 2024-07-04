import 'dart:io';

void main(List<String> args){
  var value = stdin.readByteSync();
  var number = int.parse(stdin.readByteSync().toString());
  print("${value*number}");
}