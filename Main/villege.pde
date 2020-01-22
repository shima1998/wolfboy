void kuwa(){
  pushMatrix();
  fill(126, 121, 107);
  box(10, 100, 10);
  translate(0,-55,0);
  fill(171);
  box(25,10,10);
  translate(0,0,20);
  box(5,5,30);
  translate(-10,0,0);
  box(5,5,30);
  translate(20,0,0);
  box(5,5,30);
  popMatrix();
  
  
}
void murabito(){
  
  fill(255, 235, 205);
  pushMatrix();
  translate(0, -130, 0);
  box(50, 50, 50);
  popMatrix();
  
  fill(143, 188, 143);
  pushMatrix();
  translate(0, -80, 0);
  box(30, 50, 50);
  popMatrix();

  pushMatrix();
  translate(-20, -90, 0);
  box(10, 30, 30);
  translate(0,20,0);
  rotateX(radians(-60));
  kuwa();
  popMatrix();

  pushMatrix();
  translate(20, -90, 0);
  box(10, 30, 30);
  popMatrix();

  pushMatrix();
  translate(-10, -50, 0);
  box(10, 30, 30);
  popMatrix();
  

  pushMatrix();
  translate(10, -50, 0);
  box(10, 30, 30);
  popMatrix();

  //noFill();

}
