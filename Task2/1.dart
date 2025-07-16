
import 'dart:io';

Future<void> main() async {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter your age: ');
  String? ageInput = stdin.readLineSync();
  int age = int.parse(ageInput ?? '0');

 
  int yearsTo100 = 100 - age;
  print('Hello $name! You will be 100 years old in $yearsTo100 years.');
}
