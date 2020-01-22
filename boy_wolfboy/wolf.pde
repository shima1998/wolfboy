void wolfMain() {
  pushMatrix();
  //noStroke();
  //鼻(Nose)
  fill(124, 125, 127);
  translate(150, -150);
  box(40, 40, 40);
  //頭(Head)
  fill(106, 105, 103);
  translate(-70, -20);
  box(100, 100, 100);
  //左耳(Left ear)
  fill(133, 134, 129);
  translate(-30, -65, 34);
  box(10, 40, 30);
  //右耳(Right ear)
  translate(0, 0, -68);
  box(10, 40, 30);
  //胴体前(Front Body)
  fill(96, 95, 93);
  translate(-80, 65, 34);
  box(120, 130, 100);
  //胴体後(Rear body)
  fill(106, 105, 103);
  translate(-135, 0);
  box(150, 90, 90);
  //尻尾(Tail)
  fill(116, 115, 113);
  translate(-125, 0);
  box(100, 20, 20);
  //足(Legs)
  fill(136, 135, 133);
  translate(280, 100, 25);
  box(20, 100, 20);
  translate(0, 0, -50);
  box(20, 100, 20);
  translate(-180, 0, 0);
  box(20, 110, 20);
  translate(0, 0, 55);
  box(20, 110, 20);
  popMatrix();
}
