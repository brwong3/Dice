class Dice{
  int myX;
  int myY; 
  
  Dice(int x, int y) {
    myX = x;
    myY = y;
  }
     
  void number() {
    int number = (int)(Math.random() * 6) + 1;
    total += number;
    
    if (number == 1) {
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      noStroke();
      ellipse(myX + 42,myY + 45, 10,10);
      
    }
    
    if (number == 2) {
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      noStroke();
      ellipse(myX + 28, myY + 30, 10,10);
      ellipse(myX + 56, myY + 60 ,10,10);
    }
    
    if (number == 3) {
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      noStroke();
      ellipse(myX + 16.8, myY + 18, 10,10);
      ellipse(myX + 42, myY + 45, 10,10);
      ellipse(myX + 67.2, myY + 72 ,10,10);
    }
    
    if(number == 4) {
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      noStroke();
      ellipse(myX + 28, myY + 30, 10,10);
      ellipse(myX + 56, myY + 30, 10,10);
      ellipse(myX + 28, myY + 60, 10,10);
      ellipse(myX + 56, myY + 60, 10,10);
      
    }
    
   if(number == 5) {
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     noStroke();
     ellipse(myX + 42, myY + 45,10, 10);
     ellipse(myX + 16.8, myY + 18, 10,10);
     ellipse(myX + 67.2, myY + 18,10, 10);
     ellipse(myX + 16.8, myY + 72,10,10);
     ellipse(myX + 67.2, myY + 72,10,10); 
   }
   if(number == 6) {
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     noStroke();
     ellipse(myX + 28, myY + 22.5,10,10);
     ellipse(myX + 28, myY + 45,10,10);
     ellipse(myX + 28, myY + 67.5,10,10);
     ellipse(myX + 56, myY + 22,10,10);
     ellipse(myX + 56, myY + 45,10,10);
     ellipse(myX + 56, myY + 67.5,10,10);
     
     
     
   }
 }
  
  
 void show() {
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   stroke(0);
   rect(myX,myY,84,90);  
   
  }
  
}


int x = 10;
int y = 10;

void setup() {
 background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 size(800,600);
 
 for(int i = 0; i < 5; i++) {
  for(int j = 0; j < 8; j++) {
    Dice dice = new Dice(x,y);
    dice.show();
    dice.number();
    x += 100;
  }
  x = 10;
  y += 100;
 }
 y = 10;
 fill(0);
 textSize(50);
 text("Framerate" + ":" + " " +  framerate,10,570);
 text("Sum" + ":" + " " + total, 550,570);
}

int framerate = 1;
int total = 0;

void draw() {
  total = 0;
  background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  frameRate(framerate);
  for(int i = 0; i < 5; i++) {
    for(int j = 0; j < 8; j++) {
      Dice dice = new Dice(x,y);
      dice.show();
      dice.number();
      x += 100;
    }
   x = 10;
   y += 100;
   }
   y = 10;
   
   fill(0);
   textSize(50);
   text("Framerate" + ":" + " " +  framerate,10,570);
   text("Sum" + ":" + " " + total, 550,570);
   
}
  
void mousePressed() {
  redraw();
  framerate += 1;
  
}
  
  
