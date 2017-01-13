Bacteria [] dots;

 void setup()   
 {     
   size(500,500);
   background(0,0,0);
   dots = new Bacteria[(int)(Math.random()*500)];
   for(int i = 0; i < dots.length; i++){
     dots[i] = new Bacteria();
   }
 }   
 void draw() 
 { 
   background(0,0,0);
   for(int i = 0; i < dots.length; i++){
     dots[i].show();
     dots[i].move();
   }
 } 
 
class Bacteria
 {     
  int x, y;
  Bacteria(){
    x = 250;
    y = 250;
  }
  void move() {
   if (mouseX >= x && mouseY >= y){
    x +=(int)(Math.random()*5);
    y +=(int)(Math.random()*5);
   }
   else if (mouseX >= x && mouseY <= y){
    x +=(int)(Math.random()*5);
    y -=(int)(Math.random()*5);
    }
    else if (mouseX <= x && mouseY<= y){
    x -=(int)(Math.random()*5);
    y -=(int)(Math.random()*5);
    }
    else if (mouseX<= x && mouseY >= y){
    x -=(int)(Math.random()*5);
    y +=(int)(Math.random()*5);
    }
  }

  void show(){
    fill(230,(int)(Math.random()*225),230);
    ellipse(x,y,5,5);
  }
 }
