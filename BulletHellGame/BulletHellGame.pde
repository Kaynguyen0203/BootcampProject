User user;
char [] keys;
PVector uPos;
BulletSniper BS;
BulletClass bullet;
ArrayList<BulletClass> bullets = new ArrayList <BulletClass>();
boolean activate = false;
int surviveTime;
void setup() {
  keys = new char[3];
  keys[0] = 'f';
  keys[1] = 'f';
  keys[2] = 'f';
  size(700, 700);
  user = new User();
  BS = new BulletSniper();
}
void draw() {
  background(0);
  stroke(255);
  fill(0);
  quad(200, 200, 200, 500, 500, 500, 500, 200);
  if (user.uHealth>1) {
    surviveTime = frameCount/60;
    fill(255);
    text("Time: "+surviveTime,20,20);
    user.draw();
    user.move();
    if (frameCount > 50) {
      BS.draw();
      if (activate == true) {
        bullet.shoot();
      }
    }
    if (frameCount % 1000 == 0) {
      bullets.clear();
    }
  } else {
    fill(255);
    textSize(50);
    text("GAME OVER",width/2,height/2);
    textAlign(CENTER);
    textSize(30);
    text("Survived for "+surviveTime+" seconds",width/2,(height/2)+50);
  }
}
void keyPressed() {
  for (int i=0; i<3; i++) {
    if (key == keys[i]) {
      keys[i] = 'f';
    }
  }
  for (int i=0; i<3; i++) {
    if (keys[i] == 'f') {
      keys[i] = key;
      break;
    }
  }
}
void keyReleased() {
  for (int i=0; i<3; i++) {
    if (keys[i] == key) {
      keys[i] = 'f';
      break;
    }
  }
}
PVector randomBox() {
  float x;
  float y;
  int i;
  i = int(random(0,4));
  if (i == 0) {
    x = random(15,185);
    y = random(15,685);
  } else if (i == 1) {
    x = random(15,685);
    y = random(15,185);
  } else if (i == 2) {
    x = random(525,685);
    y = random(15,685);
  } else {
    x = random(15,685);
    y = random(525,685);
  }
  return new PVector(x,y);
}
