void setup(){
  size(500, 500, P3D);
  noFill();
  stroke(0);
}

void draw(){
  background(255);
   camera(mouseX, mouseY, 0, // 視点X, 視点Y, 視点Z
         250, 250, 0, // 中心点X, 中心点Y, 中心点Z
         0.0, 1.0, 0.0); // 天地X, 天地Y, 天地Z
  
 
  pushMatrix();
  translate(250, 250, 0);
  box(50, 50, 50);
  popMatrix();
  
  pushMatrix();
  translate(250, 300, 0);
  box(30, 50, 50);
  popMatrix();
  
  pushMatrix();
  translate(230, 290, 0);
  box(10, 30, 30);
  popMatrix();
  
  pushMatrix();
  translate(270, 290, 0);
  box(10, 30, 30);
  popMatrix();
  
  pushMatrix();
  translate(240, 330, 0);
  box(10, 30, 30);
  popMatrix();
  
  pushMatrix();
  translate(260, 330, 0);
  box(10, 30, 30);
  popMatrix();
  
  noFill();
}
