int total = 0;
void setup() {
  somme(100);
  println(total);
}

int somme(int n) {
  for(int compteur = 1; compteur <= n; compteur++) {
  total = total + compteur;
  }
  return total;
}
