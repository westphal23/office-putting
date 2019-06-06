Officehole Oh;
float xspeed=5;
boolean m = true;
boolean doubleCheck= true;
int count=0;
boolean hit=true;
boolean gameOver=false;
String text;
boolean gameWon=false;
int strokes=0;

void setup() {
  size(600, 1200);
  Oh=new Officehole(200, 150);
  text="";
}

void draw() {   
  

  background(150);
  if (!gameOver) {
    Oh.display();
    if (m)
      Oh.move();    
    if (m==false)
      Oh.putt();
    if (m==false) {
      count++;
      if (count==40) {
        m=true;
        count=0;
        hit=false;
      }
    }
    if (hit==false)
      if (Oh.getPosition()<120)
        gameOver=true;
    if (Oh.getPosition()==120)
      gameWon=true;
  }else{
    fill(0);
    textSize(50);
    text(" Game Over ", 170, 500);
    fill(0);
    textSize(50);
    text(strokes, 400, 590);
    fill(0);
    textSize(50);
    text("Strokes:", 180, 590);
  }
}

void mousePressed() {  
    strokes=strokes+1;        
    m=false;
}
