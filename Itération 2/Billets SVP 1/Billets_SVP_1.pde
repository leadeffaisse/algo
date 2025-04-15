float Total;

void setup() {
  calculePrix(4, 10.5);
  println("Le prix total pour 4 personnes est de : " + Total + " euros.");
  calculePrix(9, 10.5);
  println("Le prix total pour 9 personnes est de : " + Total + " euros.");
}

void calculePrix(int nombreDeBillets, float Prix) {
  Total = nombreDeBillets * Prix;
}
