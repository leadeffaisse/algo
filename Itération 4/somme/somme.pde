int[] board = {1, 2, 3, 4, 5, 6, 7, 8, 9};
float sum = 0;

void setup() {
  getSum();
}

void getSum() {
  for (int i = 0; i < board.length; i++) {
    sum += board[i];
  }
  println("La somme totale est de : " + sum);
}
