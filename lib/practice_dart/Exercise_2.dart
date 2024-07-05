import 'dart:io';

void main(){
  stdout.write("Hi, Please choose a number : ");
  int number = int.parse(stdin.readByteSync().toString());
  if(number % 2 == 0){
    print("Choose number is even");
  }else{
    print("Choose number is odd");
  }
}