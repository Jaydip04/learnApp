import 'dart:io';

void main(){
  Set<String> colorList1 = {"White","Black","Red"};
  Set<String> colorList2 = {"Red","Green"};

  Set<String> difference = colorList1.difference(colorList2);
  print(difference);
}
