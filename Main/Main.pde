int NUM = 10;
int days = 0;

PVector[] location = new PVector[NUM];
PVector[] velocity = new PVector[NUM];
//0:少年,1:狼,2:羊,3:村人A

PImage[] img;
PShape[] talk;
int animeCount = 2500;

float upDown = -1;//上下運動用
float[] jump = new float[NUM];

void setup() {
  size(500, 500, P3D);
  noFill();
  stroke(0);
  jump[0] = -25;
  textSize(100);
  textAlign(CENTER);

  for (int i = 0; i < NUM; i++) { //配列の数だけ繰り返し
    //位置のベクトルの初期設定
    location[i] = new PVector(0, 0, 0);
    //速度のベクトルの初期設定
    velocity[i] = new PVector(0, 0, 0);
  }
}

void draw() {
  //float th = mouseX / 60.0; // range 0 to 8.53
  float th2 = mouseY / 180.0;
  background(0, 200, 230);

  switch(days) {
  case 0:
    pushMatrix();
    camera(1000, -500, -(width/2)*sin(th2), 800, 0, 800, 0.0, 1.0, 0.0);
    farmMain();

    pushMatrix();
    translate(800, 0, 800);//こどもの初期位置
    pushMatrix();//こどもの初期位置保存
    
    if ((animeCount >= 240 && animeCount < 480) || (animeCount >= 1260 && animeCount < 1500) || (animeCount >= 2720 && animeCount < 3000)) {
      pushMatrix();
      translate(-50, -270, 0);
      lie();
      popMatrix();
      //2.村人を呼ぶときのアニメ&7.再び呼ぶアニメ&13.然るべき報い
      if (location[0].y < -100 || location[0].y > 0) {
        jump[0]*=-1;
      }
      move(0, 0, jump[0], 0);
      translate(0, location[0].y, 0);
    }

    if ((animeCount >= 900 && animeCount < 1020) || (animeCount > 1920 && animeCount < 2160)) {
      //5.笑ってるアニメ&10.またまた笑うアニメ
      if (location[0].y < -100 || location[0].y > 0) {
        jump[0]*=-1;
      }
      pushMatrix();
      move(0, 0, jump[0], 0);
      translate(location[0].x, location[0].y, location[0].z);
      popMatrix();
    }
    
    if (animeCount < 3000) {
      boy();
      if ((animeCount > 120 && animeCount < 240) || (animeCount >= 2500 && animeCount < 2720)) {//1.ひらめきのアニメ&&12b.狼の降臨
        translate(-50, -270, 0);
        ex();
      }
      popMatrix();
      pushMatrix();
      translate(-300, 0, -150);
      rotateY(280);
      sheepMain();
      popMatrix();
      pushMatrix();
      translate(100, 0, -200);
      rotateY(140);
      sheepMain();
      popMatrix();
      popMatrix();
    }
    
    if (animeCount > 2500 && animeCount < 3000) {//12a.狼の降臨
      pushMatrix();
      translate(800, 0, 800);
      if (-500 + location[2].y < 0) {
        velocity[2].y = 20;
        location[2].add(velocity[2]);
      }
      translate(0, -500 + location[2].y, -500);
      rotateY(-90);
      wolfMain();
      popMatrix();
    }


    if (animeCount > 3000) {//15.最後追いかけられる
      move(3, -10, upDown, 0);
      translate(location[3].x, location[3].y, -300);
      rotateY(230);
      wolfMain();
      popMatrix();
      pushMatrix();
      move(0, -10, upDown, 0);
      translate(location[0].x, location[0].y, location[0].z);
      rotateY(230);
      boy();
      popMatrix();
      pushMatrix();
      move(4, -10, upDown, 0);
      translate(-300 + location[4].x, location[4].y, -150 + location[4].z);
      //rotateY(280);
      rotateY(180);
      sheepMain();
      popMatrix(); 
      pushMatrix();
      translate(100 + location[4].x, location[4].y, -200 + location[4].z);
      //rotateY(140);
      rotateY(230);
      sheepMain();
      popMatrix();
      popMatrix();
    }


    //ここから下が村人の挙動
    pushMatrix();
    if ((animeCount > 480 && animeCount < 540) || (animeCount > 1500 && animeCount <= 1560)) {//3.村人がかけつけてくるときのアニメ&8.2日目もかけつけてくる
      move(1, 20, upDown, 10);
    } else {
      move(1, 0, 0, 0);
    }
    translate(-800+location[1].x, location[1].y, -600+location[1].z);
    if ((animeCount > 540 && animeCount <= 900) || (animeCount > 1560 && animeCount <= 1920)) {//4.何もいなくて村人がきょろきょろするアニメ&9.やっぱりなにもいない
      rotateY(cos(animeCount / 60.0));
    }
    if (animeCount == 900 || animeCount == 2020) {
      location[1].x = 0; 
      location[1].y = 0;
      location[1].z = 0;
    }

    if (animeCount > 3000 && animeCount < 3120) {//14.嘘の代償
      pushMatrix();
      translate(-60, -270, 0);
      owata();
      popMatrix();
    }
    murabito();

    popMatrix();
    //pushMatrix();
    //translate(-600+location[1].x, location[1].y, -600+location[1].z);
    //murabito();
    //popMatrix();
    //pushMatrix();
    //translate(-400+location[1].x, location[1].y, -600+location[1].z);
    //murabito();
    //popMatrix();
    popMatrix();
    break;
  case 1:
    pushMatrix();
    camera(0, -250, 500, 0, 0, 0, 0.0, 1.0, 0.0);
    background(0, 200, 230);
    fill(255);
    text("NEXT DAY", 0, 0);
    popMatrix();
    break;
  case 2:
    pushMatrix();
    camera(0, -250, 500, 0, 0, 0, 0.0, 1.0, 0.0);
    background(0, 200, 230);
    fill(0);
    text("LAST DAY", 0, 0);
    popMatrix();
    break;
  }

  animeCount++;//
  if ((animeCount > 1040 && animeCount < 1260)) {//6.次の日へ
    days = 1;
  } else if ((animeCount > 2160 && animeCount < 2280)) {//11.審判の日
    days = 2;
  } else {
    days = 0;
  }
}
