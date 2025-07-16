
import 'dart:io';
import 'dart:async';

Future<void> main() async {
  stdout.write("Enter numbers separated by space: ");
  var input = stdin.readLineSync();
  var numbers = input
      ?.split(' ')
      .map((e) => int.tryParse(e))
      .whereType<int>()
      .toList() ?? [];
  if (numbers.isEmpty) return print(" No valid numbers.");
  var result = await findMinMax(numbers);
  print("Min: ${result[0]}, Max: ${result[1]}");
}
Future<List<int>> findMinMax(List<int> nums) async {
  await Future.delayed(Duration(milliseconds: 200));
  return [nums.reduce((a, b) => a < b ? a : b), nums.reduce((a, b) => a > b ? a : b)];
}
