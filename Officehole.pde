class Officehole{
  float x;
  float y;
  
  public Officehole(float x, float y){
    this.x=x;
    this.y=y;
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
    
  }
}
