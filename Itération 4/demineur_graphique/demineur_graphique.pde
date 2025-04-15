int tailleCase = 40;
int lignes = 10;
int colonnes = 10;
int nombreMines = 10;
int[][] champs = new int[colonnes][lignes];
boolean[][] revealed = new boolean[colonnes][lignes];
boolean gameOver = false;
boolean victory = false;
int casesRevealed;

void setup() {
  size(400, 400);
  initBoard(nombreMines);
  sommeMinesVoisines();
}

void draw() {
  background(255);
  afficherChamps();

  if (gameOver) {
    fill(127, 0, 0);
    rect(80, 160, 240, 80);
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Tu as perdu !", width / 2, height / 2);
  } else if (victory) {
    fill(127, 0, 0);
    rect(80, 160, 240, 80);
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Tu as gagné !", width / 2, height / 2);
  }
}

void mousePressed() {
  if (!gameOver) {
    int x = mouseX / tailleCase;
    int y = mouseY / tailleCase;
    if (x < colonnes && y < lignes) {
      revealed[x][y] = true;

      if (isAMine(x, y)) {
        gameOver = true;
      } else {
        checkVictory();
      }
    }
  }
}

void initBoard(int nombreMines) {
  int count = 0;
  while (count < nombreMines) {
    int i = int(random(colonnes));
    int j = int(random(lignes));
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

      if (ni >= 0 && ni < colonnes && nj >= 0 && nj < lignes && !(x == 0 && y == 0)) {
        if (isAMine(ni, nj)) {
          compteur++;
        }
      }
    }
  }
  return compteur;
}


void sommeMinesVoisines() {
  for (int i = 0; i < colonnes; i++) {
    for (int j = 0; j < lignes; j++) {
      if (!isAMine(i, j)) {
        champs[i][j] = getMines(i, j);
      }
    }
  }
}

void afficherChamps() {
  textAlign(CENTER, CENTER);
  textSize(20);
  for (int i = 0; i < colonnes; i++) {
    for (int j = 0; j < lignes; j++) {
      int x = i * tailleCase;
      int y = j * tailleCase;
      fill(230);
      stroke(0);
      rect(x, y, tailleCase, tailleCase);

      if (revealed[i][j]) {
        fill(0);
        if (isAMine(i, j)) {
          text("X", x + tailleCase/2, y + tailleCase/2);
          noLoop();
        } else {
          text(champs[i][j], x + tailleCase/2, y + tailleCase/2);
        }
      }
    }
  }
}

void checkVictory() {
  for (int i = 0; i < colonnes; i++) {
    for (int j = 0; j < lignes; j++) {
      if (!isAMine(i, j) && !revealed[i][j]) {
        return;
      }
    }
  }
  victory = true;
}
