void talk() {//吹き出しの元
  fill(255);
  box(100, 100, 1);
  pushMatrix();
  translate(10, 90, 0);
  box(30, 30, 1);
  translate(7, 45, 0);
  box(15, 15, 1);
  popMatrix();
}

void ex() {
  pushMatrix();
  fill(255);
  box(100, 100, 1);
  translate(0, -10, 0);
  fill(255, 0, 0);
  box(20, 50, 20);
  translate(0, 40, 0);
  box(20, 20, 20);
  popMatrix();
  pushMatrix();
  fill(255);
  translate(10, 90, 0);
  box(30, 30, 1);
  translate(7, 45, 0);
  box(15, 15, 1);
  popMatrix();
}

void lie() {
  pushMatrix();
  
  wolfMain();
  translate(-40, -70, 0);
  fill(255);
  box(270, 270, 1);
  popMatrix();
  pushMatrix();
  fill(255);
  translate(10, 90, 0);
  box(30, 30, 1);
  translate(7, 45, 0);
  box(15, 15, 1);
  popMatrix();
}

void owata() {
  pushMatrix();
  boy();
  translate(5, -60, 0);
  fill(255);
  box(150, 150, 1);
  popMatrix();
  pushMatrix();
  fill(255);
  translate(10, 90, 0);
  box(30, 30, 1);
  translate(7, 45, 0);
  box(15, 15, 1);
  popMatrix();
}
