import 'dart:io';

void main(List<String> args) {
  var vowels = ['a', 'e', 'o', 'u', 'i'];
  var value = stdin.readLineSync();
  value = value!.substring(0,1);
  vowels.forEach((f){
    if (f == value) {
      print('True');
      exit(0);
    }
    else {
      print('False');
      exit(0);
    }
  });
}
