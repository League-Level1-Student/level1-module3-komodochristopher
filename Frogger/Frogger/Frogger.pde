Car r = new Car(10,10,50,10);
Car t = new Car(30,10,40,10);
int x =500;
int y=550;

void draw(){
  
  background(#0000FF);
  fill(#008000);
ellipse(x, y, 10, 10);
border();
}


void setup(){
  size(800, 600);

  
}
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            //Frog Y position goes up
    
           y=y-10;
        }
        else if(keyCode == DOWN)
        {
            //Frog Y position goes down 
          y=y+10;
        }
        else if(keyCode == RIGHT)
        {
            //Frog X position goes right
            x=x+10;
        }
        else if(keyCode == LEFT)
        {
            //Frog X position goes left
            x=x-10;
        }
    }
}
void border(){
 if(x>800){
   x=800;
 }
if(x<0){
   x=0;
 }

if(y>600){
  y=600;
 
}
if(y<0){
  y=0;
 
}
}
