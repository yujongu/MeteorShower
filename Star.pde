class Star {
  float radius;
  float xPos;
  float yPos;

  float gravity;
  float wind;
  Star() {
    radius = random(0, 20);
    xPos = random(0, width);
    yPos = 0;
    gravity = random(1, 3);
    wind = random(-5, 5);
  }

  void fall() {
    yPos += gravity;
    xPos += wind;
    if (yPos > height - 10) { //hits bottom
      gravity *= (-1);
      gravity += 0.5;
      radius -= 2;
      
    } else if (gravity <= 0) { //rises up to stop
      gravity += 1;
    }
    if (gravity > 0) { //falls back down
      gravity += 0.5;
    }
    if (radius < 1) {
      radius = random(0, 15);
      xPos = random(0, width);
      yPos = 0;
      gravity = random(1, 3);
      wind = random(-5, 5);
    }
    if(xPos < 0 || xPos > width){
      wind -= 1;
      wind *= (-1);
    }
    if(wind > 0){
      wind -= 0.01;
    }
    
  }

  void show() {
    ellipse(xPos, yPos, radius, radius);
  }
}
