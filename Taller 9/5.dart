import 'dart:io';

void main() {
  print('Ingrese el valor de n:');
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1;
  print('Serie Fibonacci hasta $n:');
  while (a <= n) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
}
