Officehole Oh;
float xspeed=5;
boolean m = true;
boolean doubleCheck= true;
int count=0;
int strokes;
boolean hit=true;
boolean gameOver=false;
String text;
boolean gameWon=false;

void setup() {
  size(600, 1200);
  Oh=new Officehole(200, 150);
  text="";
}

void draw() {
  if (gameOver) {      
    fill(0);
    textSize(30);    
    text(" Game Over ", width/2, (height/2)-20);

    //gameOver=false;
  }
  //if (gameWon){
  //  println("You Won!");
  //}
  fill(0);
  textSize(30);
  text(strokes, 100, 100);

  background(100);
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
  }
}

void mousePressed() {
  strokes++;
  m=false;
}
void keyPressed() {
  if (key==CODED) {
    //if(keyCode==UP)
    //doubleCheck= true;
    if (keyCode == DOWN) {
      xspeed=5;
    }
  }
}
