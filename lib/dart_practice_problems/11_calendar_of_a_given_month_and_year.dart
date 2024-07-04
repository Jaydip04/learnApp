import 'dart:io';
// Note
// This programme is not right output and not execute.
void main(){
  var month = stdin.readLineSync();
  var year = stdin.readLineSync();
  Process.run("cal", [month!, year!]).then((ProcessResult results) {
    print(results.stdout);
  });;
}
// Output :