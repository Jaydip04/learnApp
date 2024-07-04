import 'dart:io';

void main(){
  var fileName = stdin.readLineSync();
  var fileSplit = fileName?.split(".");
  print(fileSplit![1]);
}
// Output : abc.java
// java