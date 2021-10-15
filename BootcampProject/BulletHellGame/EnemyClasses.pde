class BulletSniper {
  float lifespan;
  PVector BSpos;
  float wait;
  boolean spawn;
  BulletSniper() {
    PVector position = randomBox();
    BSpos = new PVector(position.x,position.y);
    lifespan = frameCount + 150;
    wait = frameCount + 50;
    spawn = true;
  }
  void draw() {
    if (spawn == false) {
      wait = frameCount + 50;
      lifespan = frameCount + 150;
      PVector position = randomBox();
      BSpos.x = position.x;
      BSpos.y = position.y;
      spawn = true;
    }
    if (wait < frameCount) {
      if (lifespan > frameCount) {
        fill(255);
        circle(BSpos.x,BSpos.y,30);
      } else {
        spawn = false;
      }
    }
    if (spawn == true && wait+50 < frameCount) {
      activate = true;
      bullet = new BulletClass(BSpos.x,BSpos.y);
      bullets.add(bullet);
    }
  }
}

class BulletSpinner {
  float lifespan;
  PVector BSpos;
  float wait;
  boolean spawn;
  BulletSpinner() {
    PVector position = randomBox();
    BSpos = new PVector(position.x,position.y);
    lifespan = frameCount + 300;
    wait = frameCount + 100;
    spawn = true;
  }
  void draw() {
    if (spawn == false) {
      wait = frameCount + 100;
      lifespan = frameCount + 300;
      PVector position = randomBox();
      BSpos.x = position.x;
      BSpos.y = position.y;
      spawn = true;
    }
    if (wait < frameCount) {
      if (lifespan > frameCount) {
        fill(255);
        circle(BSpos.x,BSpos.y,70);
      } else {
        spawn = false;
      }
    }
    if (spawn == true && wait+100 < frameCount) {
      activate2 = true;
      bullet2 = new BulletClass2(BSpos.x,BSpos.y);
      bullets2.add(bullet2);
    }
  }
}
