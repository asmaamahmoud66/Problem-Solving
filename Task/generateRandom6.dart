
import 'dart:math'; 


int? generateRandom() {
  Random random = Random();
  int rand = random.nextInt(2); 
  if (rand == 1) {
    return 100;                
  } else {
    return null;               
  }
}

void main() {
  int status = generateRandom() ?? 0;  
  print("Status: $status");
}
