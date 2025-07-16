
import 'dart:io';
void main() {
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();
  int number = int.parse(input ?? '0');
  var result = [number].map((num) {
    if (num % 2 == 0) {
      return 'The number $num is even.';
    } else {
      return 'The number $num is odd.';
    }
  });
  print(result.first);
}
