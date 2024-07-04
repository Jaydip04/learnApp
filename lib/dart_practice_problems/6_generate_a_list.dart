import 'dart:io';

void main(){
  var elements = stdin.readLineSync();
  var eleList = elements?.split(",");
  print("List: $eleList");
  var eleSet = <String> {};
  for (var x in eleList!){
    eleSet.add(x);
  }
  print("Set : $eleSet");
}
// Output : 3,5,7,23
// List: [3, 5, 7, 23]
// Set : {3, 5, 7, 23}