import 'dart:io';

void main() {
  String? username;

  if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    username = Platform.environment['USER'] ?? Platform.environment['USERNAME'];
  }

  if (username != null) {
    print('Current username: $username');
  } else {
    print('Username could not be determined.');
  }
}