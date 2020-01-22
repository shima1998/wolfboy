void sheepMain() {
  scale(0.5);
  pushMatrix();
  noStroke();
  //頭(Head)
  fill(240);
  translate(40, -250);
  box(120, 120, 120);
  //正面から見て左の耳(Left ear)
  fill(242,224,201);
  translate(20, -70, 45);
  box(20, 20, 20);
  //正面から見て右の耳(Right ear)
  translate(0, 0, -90);
  box(20, 20, 20);
  //体(Body)
  fill(222,204,181);
  translate(-150, 150, 45);
  box(240, 180, 180);
  //左前足上(Left front leg(up))
  fill(242,244,231);
  translate(85, 115, 55);
  box(60, 50, 60);
  //左前足下(Left front leg(down))
  fill(148,118,97);
  translate(0, 50, 0);
  box(50, 50, 50);
  //右前足上(Right front leg(up))
  fill(242,244,231);
  translate(0, -50, -110);
  box(60, 50, 60);
  //右前足下(Right front leg(down))
  fill(148, 118, 97);
  translate(0, 50, 0);
  box(50, 50, 50);
  //右後足上(Right rear leg(up))
  fill(242,244,231);
  translate(-160, -50, 0);
  box(60, 50, 60);
  //右後足下(Right rear leg(down))
  fill(148, 118, 97);
  translate(0, 50, 0);
  box(50, 50, 50);
  //左後足上(Left rear leg(up))
  fill(242,244,231);
  translate(0, -50, 110);
  box(60, 50, 60);
  //左後足下(Left front leg(down))
  fill(148 , 118, 97);
  translate(0, 50, 0);
  box(50, 50, 50);
  //尻尾(Tail)
  fill(240);
  translate(-55, -230, -55);
  box(20, 20, 20);
  popMatrix();
  scale(2.0);
}
