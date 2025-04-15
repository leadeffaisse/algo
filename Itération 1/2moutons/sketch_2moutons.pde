void setup() {
  size(1200, 1200);
  background(200, 255, 200);
 
  mouton(120, 80);
  mouton(620, 80);
}

void mouton(int x, int y) {
  rect(x, y, 350, 220);
  rect(x+40, y+220, 30, 100);
  rect(x+100, y+220, 30, 100);
  rect(x+220, y+220, 30, 100);
  rect(x+280, y+220, 30, 100);
  ellipse(x+410, y+60, 120, 120);
  fill(0);
  ellipse(x+380, y+60, 15, 15);
  ellipse(x+440, y+60, 15, 15);
  fill(255);
}
