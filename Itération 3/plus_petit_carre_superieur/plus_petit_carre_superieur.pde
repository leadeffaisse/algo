void setup() {
  println(plusPetitCarreSuperieur(30));
  println(plusPetitCarreSuperieur(63));
}

int plusPetitCarreSuperieur(int n) {
  int compteur = 1;
  while(compteur * compteur < n) {
    compteur = compteur + 1;
  }
  int carre = compteur * compteur;
  return carre;
}
