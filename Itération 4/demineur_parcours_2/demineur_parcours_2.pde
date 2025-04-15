int tailleCase = 40;
int lignes = 10;
int colonnes = 10;
int[][] champs = new int[lignes][colonnes];

void setup() {
  size(500, 500);
  initBoard(3);
  sommeMinesVoisines();
}

void draw() {
  background(255);
  afficherChamps();
}

void initBoard(int nombreMines) {
  int count = 0;
  while (count < nombreMines) {
    int i = int(random(lignes));
    int j = int(random(colonnes));
    if (champs[i][j] != 99) {
      champs[i][j] = 99;
      count++;
    }
  }
}

boolean isAMine(int i, int j) {
  return champs[i][j] == 99;
}

int getMines(int i, int j) {
  int compteur = 0;

  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      int ni = i + x;
      int nj = j + y;

      if (ni >= 0 && ni < lignes && nj >= 0 && nj < colonnes && !(x == 0 && y == 0)) {
        if (isAMine(ni, nj)) {
          compteur++;
        }
      }
    }
  }
  return compteur;
}


void sommeMinesVoisines() {
  for (int i = 0; i < lignes; i++) {
    for (int j = 0; j < colonnes; j++) {
      if (!isAMine(i, j)) {
        champs[i][j] = getMines(i, j);
      }
    }
  }
}

void afficherChamps() {
  textAlign(CENTER, CENTER);
  textSize(20);
  for (int i = 0; i < lignes; i++) {
    for (int j = 0; j < colonnes; j++) {
      int x = j * tailleCase;
      int y = i * tailleCase;
      
      fill(230);
      stroke(0);
      rect(x, y, tailleCase, tailleCase);

      fill(0);
      if (isAMine(i, j)) {
        text("X", x + tailleCase/2, y + tailleCase/2);
      } else {
        text(champs[i][j], x + tailleCase/2, y + tailleCase/2);
      }
    }
  }
}
