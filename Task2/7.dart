import 'dart:async';
void main() {
  Map<String, int?> grades = {"Ali": 80, "Sara": 45, "Omar": null};
  List<int> validGrades = grades.values.map((e) => e ?? 0).toList();
  int total = validGrades.reduce((a, b) => a + b);
  var passed = grades.entries.where((e) => (e.value ?? 0) >= 50);
  print("Total: $total");
  print("Passed: ${passed.map((e) => e.key).toList()}");
}
