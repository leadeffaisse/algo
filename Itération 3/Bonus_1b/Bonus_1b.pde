int nombre;

void setup() {
  if (isPrime(9)) {
    println("Ce nombre est premier.");
  } else {
    println("Ce nombre n'est pas premier.");
  }
}

boolean isPrime(int nombre) {
  int racineCarre = int (sqrt(nombre));
  for (int diviseur = 2; diviseur <= racineCarre; diviseur++) {
    if (nombre % diviseur == 0) {
      return false;
    }
  }
  return true;
}
