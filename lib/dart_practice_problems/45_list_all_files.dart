import 'dart:io';

void main(){
  var currentDir = Directory(".");
  currentDir.list(recursive: true,followLinks: false).listen((FileSystemEntity entity){
    print(entity.path);
  });
}