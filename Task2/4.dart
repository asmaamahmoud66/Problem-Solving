
import 'dart:async';

Future<void> main() async {
  List<int> a = [5, 10, 15, 20, 25];
  List<int> result = await firstAndLastAsync(a);
  print("New list with first and last elements: $result");
}
Future<List<int>> firstAndLastAsync(List<int> numbers) async {
  await Future.delayed(Duration(milliseconds: 300));
  if (numbers.isEmpty) {
    return []; 
  }
  if (numbers.length == 1) {
    return [numbers[0]]; 
  }
  return [numbers.first, numbers.last];
}
