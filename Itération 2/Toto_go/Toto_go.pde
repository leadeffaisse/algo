int position = 0;

void setup() {
  println("Position de départ : " + position);
  while (position < 7) {
    go();
  }
  
  println("Toto est arrivé à la position : " + position);
}

boolean isNearWater(int position) {
      if (position + 1 == 2 || position + 1 == 4) {
        return true;
      } else {
        return false;
      }
}

void go() {
  if (isNearWater(position)) {
  println("Toto saute de " + position + " à " + (position + 2));
  position = position + 2;
  } else {
    println("Toto marche de " + position + " à " + (position + 1));
    position = position + 1;
  }
}
