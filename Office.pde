class Officehole{
  float x;
  float y;
  float x1;
  float xspeed=5;
  boolean bounce;
  
  public Officehole(float x, float y){
    this.x=x;
    this.y=y;
    x1=xspeed;
    x1=420;    
  }
  void display(){
    //green-fairway
    fill(0,204,0);
    rect(x, y, 200, 600);
    fill(0,255,51);
    arc(300, 150, 200, 150, 0,TWO_PI);
//tee box
    fill(0,206,0);
    rect(270, 650, 60, 50);
    //rings
    fill(55,0,200);
    arc(300, 150, 90, 90, 0,TWO_PI);
    fill(255,255,255);
    arc(300, 150, 60, 60, 0,TWO_PI);
    fill(255,0,0);
    arc(300, 150, 30, 30, 0,TWO_PI);
   //flag
    fill(0,0,0);
    triangle(340, 30, 300, 5, 300, 55);
    fill(0,204,0);
    rect(295,5, 10, 150);
    //LineRect
    fill(0,250,0);
    rect(480,650,30,40);
    fill(244,232,0);
    rect(450,650,30,40);
    fill(244,232,0);
    rect(510,650,30,40);
    fill(255,0,0);
    rect(540,650,30,40);
    fill(255,0,0);
    rect(420,650,30,40);
    fill(0);
    rect(x1,650,20,40);
    
  } 
  void move(){  
    if(x1>=550 && bounce!=true){
      bounce=true;     
    } 
    else if(x1==420){
      bounce=false;     
    }
    if (bounce==true){
       x1-=xspeed; 
    }
    else if (bounce==false)
    {
      x1+=xspeed;
    }
   
    
  
}
}
