import 'dart:io';

void main(){
  stdout.write("Please give a work : ");
  String input = stdin.readLineSync().toString().toLowerCase();
  String revInput = input.split('').reversed.join('');
  input == revInput ? print("The word is a palindrome"):print("The word is not a palindrome");
}