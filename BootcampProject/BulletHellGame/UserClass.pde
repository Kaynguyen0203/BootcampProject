class User {
  int uHealth;
  float uVel;
  PVector tempPos;
  User() {
    uPos = new PVector(width/2, height/2);
    uVel = 2.5;
    tempPos = new PVector(uPos.x,uPos.y);
    uHealth = 200;
  }
  void draw() {
    fill(255, 0, 0);
    noStroke();
    rect(uPos.x, uPos.y, 20, 20);
    fill(255,0,0);
    rect(200,180,200,15);
    fill(0,255,0);
    rect(200,180,uHealth,15);
    textSize(20);
    text("Health",410,193);
  }
  void move() {
    for (char KEY : keys) {
      if (uPos.x >200 && uPos.x <480 && uPos.y <480 && uPos.y >200) {
        if (KEY == 'w') {
          uPos.y -= uVel;
          tempPos.y = uPos.y+uVel;
        } if (KEY == 'a') {
          uPos.x -= uVel;
          tempPos.x = uPos.x+uVel;
        } if (KEY == 's') {
          uPos.y += uVel;
          tempPos.y = uPos.y-uVel;
        } if (KEY == 'd') {
          uPos.x += uVel;
          tempPos.x = uPos.x-uVel;
        }
      } else {
        uPos.x = tempPos.x;
        uPos.y = tempPos.y;
      }
    }
  }
}
