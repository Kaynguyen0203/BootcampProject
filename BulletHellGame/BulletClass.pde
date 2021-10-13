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
