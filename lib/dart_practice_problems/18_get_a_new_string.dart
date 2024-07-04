import 'dart:io';

void main(List<String> args){
  var value = stdin.readByteSync().toString();
  if(value.substring(0,2) == 'Is'){
    print(value);
  }else{
    print('Is $value');
  }
}
// Output : Is
// Is 73