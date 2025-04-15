int position = 0;
float déplacements = 0;
float moyenne = 0;

void setup() {
  println("Position de départ : " + position);
  
  walk();
  jump();
  jump();
  walk();
  walk();
  moyenne();
  
  println("Toto est arrivé à la position : " + position);
  println("Nombre total de déplacements : " + déplacements);
  println("Distance moyenne des déplacements : " + moyenne);
}

  void walk() {
    position = position + 1;
    déplacements = déplacements + 1;
    println("walk -> position : " + position);
  }

  void jump() {
    position = position +2;
    déplacements = déplacements + 1;
    println("jump -> position : " + position);
  }
  
  void moyenne() {
  moyenne = position/déplacements;
  }
  
