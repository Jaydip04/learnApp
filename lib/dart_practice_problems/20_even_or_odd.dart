import 'dart:io';

void main(){
  var number = stdin.readByteSync();
  if(number%2 == 0){
    print('The number is even');
  }else{
    print('The number is odd');
  }
}
// Output : 3
// The number is odd
// Output : 4
// The number is even