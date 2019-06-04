Officehole Oh;
float xspeed=5;


void setup() {
  size(600, 1200);
  Oh=new Officehole(200, 150);
}

void draw() {
  background(150);
  Oh.display();
  Oh.move(); 
  //noStroke();  
  Oh.ball();
  

}
void mousePressed() { 
  Oh.setSpeed(0);
  Oh.putt();  
  
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode == DOWN){
      xspeed=5;
    }
  }
}
