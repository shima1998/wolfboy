int NUM = 10;

PVector[] location = new PVector[NUM];
PVector[] velocity = new PVector[NUM];
//0:少年,1:狼,2:羊,3:村人A

float upDown = -1;//上下運動用

void setup() {
  size(500, 500, P3D);
  noFill();
  stroke(0);



  for (int i = 0; i < NUM; i++) { //配列の数だけ繰り返し
    //位置のベクトルの初期設定
    location[i] = new PVector(0, 0, 0);
    //速度のベクトルの初期設定
    velocity[i] = new PVector(0, 0, 0);
  }
}


void boy() {
  fill(255, 235, 205);
  pushMatrix();//頭
  translate(0, -105, 0);
  box(50, 50, 50);

  fill(143, 188, 143);
  translate(0, 50, 0);
  box(30, 50, 50);

  //ここから手
  pushMatrix();//
  translate(-20, -10, 0);
  box(10, 30, 30);
  //translate(0,20,0);
  //rotateX(radians(-60));
  popMatrix();

  pushMatrix();
  translate(20, -10, 0);
  box(10, 30, 30);
  popMatrix();
  //ここまで手


  //ここから足
  pushMatrix();
  translate(-10, 40, 0);
  box(10, 30, 30);
  popMatrix();

  pushMatrix();
  translate(10, 40, 0);
  box(10, 30, 30);
  popMatrix();
  //ここまで足

  popMatrix();
}



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

void draw() {


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
  upDown = move(0, 3, upDown, 3);
  translate(location[0].x, location[0].y, location[0].z);
  boy();
  popMatrix();
  farmMain();

  popMatrix();
  stroke(0);
}
