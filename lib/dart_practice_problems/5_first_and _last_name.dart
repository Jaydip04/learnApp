import 'dart:io';

void main(){
  print("Enter First Name");
  var firstName = stdin.readLineSync();
  print("Enter Last Name");
  var lastName = stdin.readLineSync();
  print("$lastName $firstName");
}
// Output :
// Enter First Name
// Jaydip
// Enter Last Name
// Tank
// Tank Jaydip