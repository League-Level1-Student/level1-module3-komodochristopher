


public class Car{
  int carX =0;
int carY= 600;
int speed =0;
int size = 50; 
 public Car(int carX,int carY, int speed, int size ){
   this.carX=carX;
   this.carY=carY;
   this.speed=speed;
   this.size=size;
   
 }
  
  void display()
  {
    fill(0,255,0);
    rect(carX , carY,  size, 50);
  }
}
  
