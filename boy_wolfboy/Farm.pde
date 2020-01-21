void farmMain() {
  noStroke();
  //地面
  pushMatrix();
  fill(#74AD3A);
  box(2400, 10, 2400);
  popMatrix();
  //建物1
  pushMatrix();
  translate(-800, -75, -850);
  fill(#BA966A);
  box(300, 100, 200);
  translate(0, -70, 60);
  rotateX(-PI/6);
  fill(#9E2236);
  box(320, 10, 165);
  translate(0, 70, -120);
  rotateX(PI/3);
  box(320, 10, 165);
  popMatrix();
  //建物2
  pushMatrix();
  translate(-400, -75, -850);
  fill(#BA966A);
  pillar(140, 70, 70);
  translate(0, -120, 0);
  fill(#9E2236);
  pillar(90, 0, 80);
  popMatrix();
  //柵大1
  pushMatrix();
  translate(1100, -65, 0);
  fill(#B0764F);
  box(10, 20, 2200);
  popMatrix();
  //柵大2
  pushMatrix();
  translate(-1100, -65, 0);
  box(10, 20, 2200);
  popMatrix();
  //柵大3
  pushMatrix();
  translate(0, -65, 1100);
  box(2200, 20, 10);
  popMatrix();
  //柵大4
  pushMatrix();
  translate(0, -65, -1100);
  box(2200, 20, 10);
  popMatrix();
  //柵小1
  pushMatrix();
  translate(1110, -65, -1100);
  for(int i=0; i<=26; i++) {
    translate(0, 0, 80);
    box(10, 100, 20);
  }
  popMatrix();
  //柵小2
  pushMatrix();
  translate(-1110, -65, -1100);
  for(int i=0; i<=26; i++) {
    translate(0, 0, 80);
    box(10, 100, 20);
  }
  popMatrix();
  //柵小3
  pushMatrix();
  translate(-1210, -65, 1110);
  for(int i=0; i<=28; i++) {
    translate(80, 0, 0);
    box(20, 100, 10);
  }
  popMatrix();
  //柵小4
  pushMatrix();
  translate(-1210, -65, -1110);
  for(int i=0; i<=28; i++) {
    translate(80, 0, 0);
    box(20, 100, 10);
  }
  popMatrix();
}

void pillar(float length, float radius1, float radius2) {
  float x, y, z;
  pushMatrix();
  beginShape(TRIANGLE_FAN);
  y = -length/2;
  vertex(0, y, 0);
  for(int deg = 0; deg <= 360; deg = deg+10) {
    x = cos(radians(deg))*radius1;
    z = sin(radians(deg))*radius1;
    vertex(x, y, z);
  }
  endShape();
  beginShape(TRIANGLE_FAN);
  y = length / 2;
  vertex(0, y, 0);
  for(int deg = 0; deg <= 360; deg = deg + 10) {
    x = cos(radians(deg))*radius2;
    z = sin(radians(deg))*radius2;
    vertex(x, y, x);
  }
  endShape();
  beginShape(TRIANGLE_STRIP);
  for(int deg = 0; deg <= 360; deg = deg + 5) {
    x = cos(radians(deg))*radius1;
    y = -length / 2;
    z = sin(radians(deg))*radius1;
    vertex(x, y, z);
    x = cos(radians(deg))*radius2;
    y = length / 2;
    z = sin(radians(deg))*radius2;
    vertex(x, y, z);
  }
  endShape();
  popMatrix();
}
