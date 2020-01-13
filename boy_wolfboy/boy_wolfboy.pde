void setup() {
  size(500, 500, P3D);
  noFill();
  stroke(0);
}

void draw() {
  //↓挙動確認用
  // background(255);
  // float th = mouseX / 60.0; // range 0 to 8.53
  // pushMatrix();//原点(0,0,0)
  // translate(250, 250, 0);
  // camera(250*cos(th), -250, 250*sin(th), 0, 0, 0, 
  //   0.0, 1.0, 0.0);
  // line(0, 0, -width, 0, 0, width);
  // line(-width, 0, 0, width, 0, 0);
  // line(0, height, 0, 0, -height, 0);
  // box(50, 10, 70);
  // pushMatrix();//原点(250,250,0)
  //translate(250, 10, 0);
  // box(50, 10, 70);
  // popMatrix();
  // popMatrix();

  background(255);
  float th = mouseX / 60.0; // range 0 to 8.53
  float th2 = mouseY / 60.0;
   
  pushMatrix();
  camera((width/2)*cos(th), (width/2)*cos(th2), (width/2)*sin(th), 0, 0, 0, 
    0.0, 1.0, 0.0);
  line(0, 0, -width, 0, 0, width);
  line(-width, 0, 0, width, 0, 0);
  line(0, height, 0, 0, -height, 0);
 
  pushMatrix();
  translate(0, -95, 0);
  box(30,30,30);
  popMatrix();
  
  pushMatrix();
  translate(0, -55, 0);
  box(30,50,15);
  popMatrix();
  
  pushMatrix();
  translate(8, -15, 0);
  box(10,30,15);
  popMatrix();
  
  pushMatrix();
  translate(-8, -15, 0);
  box(10,30,15);
  popMatrix();
  
  pushMatrix();
  translate(-20, -65, 0);
  box(10,30,15);
  popMatrix();
  
  pushMatrix();
  translate(20, -65, 0);
  box(10,30,15);
  popMatrix();
  
  popMatrix();
}
