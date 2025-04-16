int[] plateau = new int [64];
int diceResult, position = 0;

void setup() {
  while (position != 63) {
    diceRoll();
    move();
  }
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
