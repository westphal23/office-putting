class Officehole {
  float x;
  float y;
  float x1;
  int xspeed=5;
  boolean bounce; 
  int yspeed=7;
  int y1=670;
  boolean P;
  


  public Officehole(float x, float y) {
    this.x=x;
    this.y=y;
    x1=xspeed;
    x1=420;
  }
  void display() {
    //green-fairway
    fill(0, 204, 0);
    rect(x, y, 200, 600);
    fill(0, 255, 51);
    arc(300, 150, 200, 150, 0, TWO_PI);
    //tee box
    fill(0, 206, 0);
    rect(270, 650, 60, 50);
    //rings
    fill(55, 0, 200);
    arc(300, 150, 90, 90, 0, TWO_PI);
    fill(255, 255, 255);
    arc(300, 150, 60, 60, 0, TWO_PI);
    fill(255, 0, 0);
    arc(300, 150, 30, 30, 0, TWO_PI);
    //flag
    fill(0, 0, 0);
    triangle(340, 30, 300, 5, 300, 55);
    fill(0, 204, 0);
    rect(295, 5, 10, 150);
    //LineRect
    fill(0, 250, 0);
    rect(480, 650, 30, 40); //green
    fill(244, 232, 0);
    rect(450, 650, 30, 40); //yellowleft
    fill(244, 232, 0);
    rect(510, 650, 30, 40); //yellowright
    fill(255, 0, 0);
    rect(540, 650, 30, 40); //redright
    fill(255, 0, 0);
    rect(420, 650, 30, 40); //redleft
    fill(0);
    rect(x1, 650, 10, 40);//black meter
    circle();
    if(gameOver==true){
      println(" Game Over ");
    }
  } 
  void move() {  
    if (x1>=560 && bounce!=true) {
      bounce=true;
    } else if (x1==420) {
      bounce=false;
    }
    if (bounce==true) {
      x1-=xspeed;
    } else if (bounce==false)
    {
      x1+=xspeed;
    }
  } 
  int getPosition() {
    return y1;
  }
  int getSpeed() {
    return xspeed;
  }
  void setSpeed(int s) {
    xspeed=s;
  }
  void circle() {
    fill(255);
    ellipse(300, y1, 10, 10);
  }
  void ball() {          

    y1-=1;
  }
  void ball2() {        

    y1-=2;
  }
  void ball3() {     

    y1-=3;
  }
  void ball4() {   

    y1-=4;
  }
  void ball5() {     

    y1-=5;
  }
  void putt() {
    if (x1>=420 && x1<=450) {
      println(x1);
      println("Too short");      
      this.ball();
    } else if (x1>=451 && x1<=480) {
      println(x1);
      println("slightly short");
      this.ball2();
    } else if (x1>=481 && x1<=510) {
      println(x1);
      println("perfect!");
      this.ball3();
    } else if (x1>=511 && x1<=540) {
      println(x1);
      println("slightly long");
      this.ball4();
    } else if (x1>=541 && x1<=570) {
      println(x1);
      println("Too far");
      this.ball5();
    }
  }
}
