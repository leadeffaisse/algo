void setup() {
  println(plusGrandCarreInferieur(30));
  println(plusGrandCarreInferieur(63));
}

int plusGrandCarreInferieur(int n) {
  int compteur = 1;
  while((compteur +1) * (compteur + 1) < n) {
    compteur = compteur + 1;
  }
  return compteur * compteur ;
}
