



int pipeGap =100;
int upperPipeHeight = (int) random(200, 300);
int lowerY = upperPipeHeight + pipeGap;
int pipX = 400;
int gravity = 1; 
int birdYVelocity = 30;
int x = 200;
int y = 200;
void draw() {
  println("Hello");
  if (pipX == -70) {
    upperPipeHeight = (int) random(50, 200);
    teleportPipes(); 
    upperPipeHeight = upperPipeHeight +10;
  }
  background(#16c2f3);
  fill(#005f3f);
  rect(pipX, 0, 100, upperPipeHeight);


  rect( pipX, lowerY, 100, 1000);
  pipX=pipX + 2 - 3;

  fill(#005f3f);
  stroke(#FF0000);
  ellipse(x, y, 10, 10);
  birdYVelocity = birdYVelocity - gravity;
  y= y-birdYVelocity;
}


void setup() {
  size(500, 500);
    println("NO");
}

void mousePressed() {
  birdYVelocity = 11;
}

void teleportPipes() {
  pipX= 500;
  lowerY = upperPipeHeight + pipeGap;
}
