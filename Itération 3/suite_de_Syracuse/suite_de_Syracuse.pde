void setup() {
  syracuse(14);
}

void syracuse(int nombre) {
  while (nombre != 1) {
    println(nombre);
    if(nombre % 2 == 0) {
    nombre = nombre / 2;
    } else {
      nombre = nombre * 3 + 1;
    }
  }
println(nombre);
}
