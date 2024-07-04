import 'dart:io';

void main(List<String> args) {
  var numbers = (stdin.readLineSync().toString()).split(' ');
  numbers.forEach((f){
    var pattern = '';
    for (var x=0; x< int.parse(f); x++) {
      pattern += '@';
    }
    print(pattern);
  });
}