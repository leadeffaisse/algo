int[] plateau = new int [64];
int diceResult, position = 0;
int tailleCase = 20;
int y = 100 + tailleCase/2;
boolean gameOver = false;

void setup() {
  size(1400, 400);
  initBoard();
}

void draw() {
  background(210, 180, 222);
  textAlign(LEFT, BASELINE);
  textSize(15);
  fill(0);
  text("Dice result : " + diceResult, 20, 40);
  text("Position Joueur 1 : " + position, 20, 60);
  afficherPlateau();
  showPlayer(position);

  if (gameOver) {
    fill(255, 0, 0);
    textSize(30);
    text("Victoire !", width / 2, 40);
  }
}

void mousePressed() {
  if (!gameOver) {
    diceRoll();
    move();
  }
}

void initBoard() {
  for (int i = 0; i < plateau.length - 1; i++) {
    int x = i * tailleCase;
    plateau[i] = 20 + x + tailleCase/2;
  }
}

void afficherPlateau() {
  for (int i = 0; i < plateau.length - 1; i++) {
    int x = i * tailleCase;
    fill(250, 229, 211);
    stroke(0);
    rect(x + 20, 100, tailleCase, tailleCase);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(10);
    text(i, x + 20 + tailleCase/2, 100 + tailleCase/2);
  }
}

void showPlayer(int position) {
  fill(0, 100, 255);
  ellipse(20 + position * tailleCase + tailleCase/2, 100 + tailleCase/2, 10, 10);
}

int diceRoll() {
  int dice1, dice2;
  dice1 = int(random(1, 7));
  dice2 = int(random(1, 7));
  diceResult = dice1 + dice2;
  println("Le résultat du lancé de dés est de : " + diceResult);
  return diceResult;
}

void move() {
  int surplus = 0;
  position += diceResult;

  if (position > 63) {
    surplus = position - 63;
    position = 63 - surplus;
    println("Le joueur se déplace à la case : " + position);
  }
  if (position == 63) {
    println("Le joueur est arrivé sur la case " + position + " ! Victoire !");
    gameOver = true;
  }
}
