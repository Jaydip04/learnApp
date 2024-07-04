import 'dart:io';
import 'dart:math';
// Program is not run and not right output
void main(){
  dynamic radius = stdin.readByteSync();
  radius = double.parse(radius);
  print(4/3*(pi*pow(radius, 3)));
}