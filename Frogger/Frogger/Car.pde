public class Car {
  int x ;
  int y ;
  int size ;
  int speed ;
  public Car(int x, int y, int size, int speed) {

    this.x= x;
    this.y=y;
    this.size=size;
    this.speed=speed;
  }

  void display()
  {
    fill(0, 255, 0);
    rect(x, y, size, 50);
  }
  
  void left(){
 x=x +speed;
    if(x>800){
      
      x=0;
      }
  }
  void right(){
   x=x -speed;
    if(x<0){
     x=800; 
    }
    
    
  }
      int getX(){
        
        return x;
        
        
      }
       int getY(){
        
         return y;
         
      }
         int getSize(){
        
           return size;
           
      }
  }
  
