import 'dart:io';

void main(){
  double? base = double.parse(stdin.readLineSync()!);
  double? height = double.parse(stdin.readLineSync()!);
  double area = 0.5 * base * height;
  print(area);
}