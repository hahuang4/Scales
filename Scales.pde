void setup() {
  size(1500, 1500);
}

void draw() {

  for (int y = 150; y < 1500; y += 300) {
    for (int x = 150; x < 1500; x = x + 300) {
      rabbitFace(x, y);
    }
  }
}

void rabbitFace(int x, int y) { //(x,y) represent the center of my rabbit face
  //white head
  fill(255);
  ellipse(x, y, 300, 300);
  
  //ears
  fill(200, 0, 0);
  ellipse(x - 75, y - 100, 80, 150);
  ellipse(x + 75, y - 100, 80, 150);
  
  //eyes
  fill(0);
  ellipse(x - 50, y - 60, 30, 60);
  ellipse(x + 50, y - 60, 30, 60);
  
  //nose
  fill(100, 50, 0);
  triangle(x, y + 10, x - 10, y + 40, x + 10, y + 40);
  
  //mouth
  fill(0);
  arc(x, y + 70, 100, 60, radians(30), radians(150));
}
