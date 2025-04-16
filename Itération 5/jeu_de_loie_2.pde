int[] plateau = new int [64];
int diceResult, position = 0;
int tailleCase = 20;

void setup() {
  size(1400, 400);
  while (position != 63) {
    diceRoll();
    move();
  }
}

void draw() {
  background(210, 180, 222);
  textSize(15);
  fill(0);
  text("Dice result : " + diceResult, 40, 40);
  afficherPlateau();
}

int diceRoll() {
  int dice1, dice2;
  dice1 = int(random(6) + 1);
  dice2 = int(random(6) + 1);
  diceResult = dice1 + dice2;
  println("Le résultat du lancé de dés est de : " + diceResult);
  return diceResult;
}

void move() {
  int surplus = 0;
  position = position + diceResult;

  if (position > 63) {
    surplus = position - 63;
    position = position - surplus * 2;
    println("Le joueur se déplace à la case : " + position);
  }
  if (position == 63) {
    println("Le joueur est arrivé sur la case " + position + " ! Victoire !");
  }
}

void afficherPlateau() {
  for (int i = 0; i < 64; i++) {
    int x = i * tailleCase;
    fill(250, 229, 211);
    stroke(0);
    rect(x + 20, 100, tailleCase, tailleCase);
  }
}
