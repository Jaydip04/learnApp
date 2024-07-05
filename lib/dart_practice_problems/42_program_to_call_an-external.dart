import 'dart:io';
// program is not execute
void main() {
  Process.run('ls', ['-l']).then((ProcessResult results) {
    print(results.stdout);
  });
}