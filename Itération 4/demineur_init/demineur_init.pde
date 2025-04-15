int n;
int nombreMines;

void setup() {
  initBoard(n, nombreMines);
}

void initBoard(int n, int nombreMines){
  int[] champs = new int [n];
  for(int i = 1; i <= nombreMines; i++) {
  int mine = int(random(n));
  champs[mine] = 99;
  }
  println(champs);
}
