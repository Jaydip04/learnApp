import 'dart:io';
int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}
int lcm(int a, int b) {
  return (a * b) ~/ gcd(a, b);
}
void main(){
  int? num1 = int.parse(stdin.readLineSync()!);
  int? num2 = int.parse(stdin.readLineSync()!);
  int result = lcm(num1,num2);
  print(result);
}