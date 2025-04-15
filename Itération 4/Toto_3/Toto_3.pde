boolean[] chemin = {false, false, true, false, true, false, false, false}; //<>//
int positionToto = 0;

void setup() {
  println("Position de départ : " + positionToto);
  while (positionToto < chemin.length - 1) {
    go();
  }
  println("Toto est arrivé à la position : " + positionToto);
}

boolean isNearWater(int positionToto) {
  if (chemin[positionToto + 1] == true) {
    return true;
  } else {
    return false;
  }
}

void go() {
  if (isNearWater(positionToto)) {
    println("Toto saute de " + positionToto + " à " + (positionToto + 2));
    positionToto += 2;
  } else {
    println("Toto marche de " + positionToto + " à " + (positionToto + 1));
    positionToto += 1;
  }
}
