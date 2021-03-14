int carX =0;
int carY= 0;
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
 if(x<0){                
   x=790;
 }
 
 if(x>800){
  x=10;
 
}
if(y<0){
  y=590;
 
}

if(y>600){
  y=590;
 
}
}
