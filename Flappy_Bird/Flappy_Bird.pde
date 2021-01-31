int pipX =0;
int gravity = 1;
int birdYVelocity = 30;
 int x = 200;
int y = 200;
void draw(){
 
background(#16c2f3);
fill(#005f3f);
rect(x, 300, 50, 250);
x=x-1;

fill(#005f3f);
stroke(#FF0000);
ellipse(x, y, 10, 10);
birdYVelocity = birdYVelocity - gravity;
y= y-birdYVelocity;


}
 

void setup(){
  size(500,  500);
}

void mousePressed(){
   birdYVelocity = 11;

}

void teleportPipes(){
  
}
