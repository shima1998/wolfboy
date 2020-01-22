float move(int i, float velocityX, float velocityY, float velocityZ) {//速度変更の関数
  velocity[i].x = velocityX;
  velocity[i].y = velocityY;
  velocity[i].z = velocityZ;
  location[i].add(velocity[i]);
  if (location[i].y > 0 || location[i].y < -5) {
    velocityY *= -1;
  }

  return velocityY;
}
