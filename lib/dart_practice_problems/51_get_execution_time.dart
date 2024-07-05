void helloWorld() {
  print('Hello World');
}

void main() {
  final stopwatch = Stopwatch()..start();
  helloWorld();
  print('helloWorld() executed in ${stopwatch.elapsed}');
}