int count = 50;
Star[] stars = new Star[count];

void setup(){
  size(400, 400);
  for(int i = 0; i < count; i++){
    stars[i] = new Star();
  }
}

void draw(){
  background(0);
  stroke(255);
  for(int i = 0; i < count; i++){
    stars[i].fall();
    stars[i].show();
  }
}
