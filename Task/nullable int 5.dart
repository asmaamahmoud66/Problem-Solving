
int getAgeOrZero(int? age) {
  return age ?? 0;  
}

void main() {
  int? inputAge1 = null;
  int? inputAge2 = 25;

  print(getAgeOrZero(inputAge1));
  print(getAgeOrZero(inputAge2));
}
