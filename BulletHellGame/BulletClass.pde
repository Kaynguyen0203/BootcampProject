class BulletClass {
  float bSize;
  float xpos;
  float ypos;
  float wait;
  PVector unitVector;
  BulletClass (float x,float y) {
    xpos = x;
    ypos = y;
    unitVector = new PVector((uPos.x +10)-xpos,(uPos.y +10)-ypos);
    unitVector.normalize();
  }
  void draw() {
    xpos += unitVector.x*10;
    ypos += unitVector.y*10;
    fill(255);
    circle(xpos,ypos,15);
  }
  void shoot() {
    for (BulletClass b : bullets) {
      b.draw();
      if (dist(b.xpos,b.ypos,uPos.x+10,uPos.y+10) < 15) {
        user.uHealth -=1;
      }
    }
  }
}

class BulletClass2 {
  float bSize;
  float xpos;
  float ypos;
  float wait;
  float vx;
  float vy;
  PVector unitVector;
  float sign;
  float sign2;
  BulletClass2 (float x,float y) {
    sign = int(random(0,2));
    sign2 = int(random(0,2));
    xpos = x;
    ypos = y;
    vx = random(1,10);
    vy = random(1,10);
    if (sign == 0) {
      vx = -vx;
    }
    if (sign2 == 0) {
      vy = -vy;
    }
  }
  void draw() {
    xpos += vx;
    ypos += vy;
    fill(255);
    circle(xpos,ypos,15);
  }
  void shoot() {
    for (BulletClass2 b : bullets2) {
      b.draw();
      if (dist(b.xpos,b.ypos,uPos.x+10,uPos.y+10) < 15) {
        user.uHealth -=1;
      }
    }
  }
}
