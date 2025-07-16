import 'dart:async';
void main() {
  String text = "hello world";
  List<String> chars = text.replaceAll(' ', '').split('');
  Set<String> unique = Set.from(chars);
  print("All characters: $chars");
  print("Unique characters: $unique");
  print("Count of unique letters: ${unique.length}");
}
