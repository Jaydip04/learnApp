import 'dart:io';

void main(){
  var value = stdin.readByteSync();
  int parse_int = int.parse(value.toString());
  double parse_double = double.parse(value.toString());
  print("Integer: $parse_int\nDouble: $parse_double");
}