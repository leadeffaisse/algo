int[] champs;
int n;
int nombreMines;
int tailleCase = 40;

void setup() {
  size(400, 100);
  initBoard(10, 3);
  sommeMinesVoisines();
}

void draw() {
  background(255);
  afficherChamps();
}

void initBoard(int taille, int nbMines) {
  n = taille;
  nombreMines = nbMines;
  champs = new int [n];
  for (int m = 0; m < nombreMines; m++) {
    int mine = int(random(n));
    while (champs[mine] == 99) {
      mine = int(random(n));
    }
    champs[mine] = 99;
  }
}

boolean isAMine(int index) {
  return champs[index] == 99;
}

int getMines(int index) {
  int compteur = 0;
  if (index > 0 && isAMine(index - 1)) {
    compteur++;
  }
  if (index < champs.length - 1 && isAMine(index + 1)) {
    compteur++;
  }
  return compteur;
}

void sommeMinesVoisines() {
  for (int i = 0; i < champs.length; i++) {
    if (!isAMine(i)) {
      champs[i] = getMines(i);
    }
  }
}

void afficherChamps() {
  textAlign(CENTER, CENTER);
  textSize(20);
  for (int i = 0; i < champs.length; i++) {
    int x = i * tailleCase;
    fill(230);
    stroke(0);
    rect(x, 20, tailleCase, tailleCase);

    fill(0);
    if (isAMine(i)) {
      text("X", x + tailleCase/2, 20 + tailleCase/2);
    } else {
      text(champs[i], x + tailleCase/2, 20 + tailleCase/2);
    }
  }
}
