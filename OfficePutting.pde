Officehole Oh;
void setup(){
  size(600,1200);
  Oh=new Officehole(200,150);
}

void draw(){
  background(150);
  Oh.display();
  Oh.move(); 
  //noStroke();
  Oh.mousePressed();
  Oh.mousePressed2();
  
}
