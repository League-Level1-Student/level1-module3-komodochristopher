



int pipeGap =200;
int upperPipeHeight = (int) random(200, 300);
int lowerPipeTop = upperPipeHeight + pipeGap;
int pipeX = 400;
int gravity = 1; 
int score= 0;
int birdYVelocity = 30;
int birdX = 200;
int birdY = 200;
void draw() {
  println("Hello");
  if (pipeX == -70) {
    upperPipeHeight = (int) random(50, 200);
    teleportPipes(); 
    upperPipeHeight = upperPipeHeight +10;
  }
  background(#16c2f3);
  fill(#005f3f);
  rect(pipeX, 0, 100, upperPipeHeight);
text(score , 20, 20);
rect(0,480,1000,20);
  rect( pipeX, lowerPipeTop, 100, 1000);
  pipeX=pipeX + 2 - 3;                                                       
             
  fill(#005f3f);
  stroke(#FF0000);
  ellipse(birdX, birdY, 10, 10);
  birdYVelocity = birdYVelocity - gravity;
  birdY= birdY-birdYVelocity; 
 if(intersectsPipes()){
   
   exit();
 }  
if(birdY > 480){
  exit();
}
 
}


void setup() {
  size(500, 500);
    println("NO");
}

void mousePressed() {
  birdYVelocity = 14;
}

void teleportPipes() {
  pipeX= 500;
  lowerPipeTop = upperPipeHeight + pipeGap;
score =score+1;
}

boolean intersectsPipes() { 
         if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+100)){
            return true; }
        else if (birdY>lowerPipeTop && birdX > pipeX && birdX < (pipeX+100)) {
            return true; }
        else { return false; }
}

boolean intersectsGround() { 
         if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+100)){
            return true; }
        else if (birdY>lowerPipeTop && birdX > pipeX && birdX < (pipeX+100)) {
            return true; }
        else { return false; }
}
