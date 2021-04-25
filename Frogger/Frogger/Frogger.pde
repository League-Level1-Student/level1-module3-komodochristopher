Car one = new Car(70,200,70,4);
Car two = new Car(-80,300,70,9);
Car three = new Car(100,400,80,7);
Car four = new Car(800,250,70,3);
Car five= new Car(800,450,70,10);
Car six = new Car(420,350,80,8);
int x =500;
int y =550;

void draw(){
  
  background(#0000FF);
  fill(#008000);
ellipse(x, y, 10, 10);
border();
one.display();
two.display();
three.display();
four.display();
five.display();
six.display();
if(intersects(one)){
x=500;
y=550;
}
if(intersects(two)){
x=500;
y=550;
}
if(intersects(three)){
x=500;
y=550;
}
if(intersects(four)){
x=500;
y=550;
}
if(intersects(five)){
x=500;
y=550;
}
if(intersects(six)){
x=500;
y=550;
}
one.left();
two.left();
three.left();
four.right();
five.right();
six.right();
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
boolean intersects(Car car) {
 if ((y > car.getY() && y < car.getY()+50) &&
                (x > car.getX() && x < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
