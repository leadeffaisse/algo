int nombre;

void setup() {
  if (isPrime(16)) {
    println("Ce nombre est premier.");
  } else {
    println("Ce nombre n'est pas premier.");
  }
}

boolean isPrime(int nombre) {
  for (int diviseur = 2; diviseur < nombre; diviseur++) {
    if (nombre % diviseur == 0) {
      return false;
    }
  }
  return true;
}
