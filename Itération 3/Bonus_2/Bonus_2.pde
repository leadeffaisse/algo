int nombreMax = 1000;
int diviseur;

void setup() {
  listeNombresEntiers();
}

boolean isPrime(int nombre) {
  int racineCarre = int(sqrt(nombre));
  for (int diviseur = 2; diviseur <= racineCarre; diviseur++) {
    if (nombre % diviseur == 0) {
      return false;
    }
  }
  return true;
}

void listeNombresEntiers() {
  for (int nombre = 1; nombre <= nombreMax; nombre++) {
    if (isPrime(nombre)) {
      println(nombre);
    }
  }
}
