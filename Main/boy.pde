void boy() {
  fill(255, 235, 205);
  pushMatrix();//頭
  translate(0, -105, 0);
  box(50, 50, 50);

  fill(0, 0, 255);//body
  translate(0, 50, 0);
  box(30, 50, 50);
  
  fill(255, 235, 205);
  //ここから手
  pushMatrix();//
  translate(-20, -10, 0);
  box(10, 30, 30);
  //translate(0,20,0);
  //rotateX(radians(-60));
  popMatrix();

  fill(255, 235, 205);
  pushMatrix();
  translate(20, -10, 0);
  box(10, 30, 30);
  popMatrix();
  //ここまで手

  fill(255, 235, 205);
  //ここから足
  pushMatrix();
  translate(-10, 40, 0);
  box(10, 30, 30);
  popMatrix();

  fill(255, 235, 205);
  pushMatrix();
  translate(10, 40, 0);
  box(10, 30, 30);
  popMatrix();
  //ここまで足
  
  popMatrix();
}
