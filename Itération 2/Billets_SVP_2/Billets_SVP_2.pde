float prixTotal;
float total;
void setup() {
  calculePrix(4);
  println("Le prix total pour 4 personnes est de : " + prixTotal + " euros.");
  total();
  calculePrix(9);
  println("Le prix total pour 9 personnes est de : " + prixTotal + " euros.");
  total();
  println("Le total est de : " + total + " euros.");
}

float calculePrix(int nombreDeBillets) {
  float prixUnitaire = 10.50;
  prixTotal = nombreDeBillets * prixUnitaire;
  return prixTotal;
}

float total() {
total = total + prixTotal;
return total;
}
