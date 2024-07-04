import 'dart:io';

void main(){
  var number = int.parse(stdin.readByteSync().toString());
  if ((1000-number).abs() <= 100 || (2000-number).abs() <= 100) {
    print('True');
  }
  else {
    print('False');
  }
}
// Output : 100
// False