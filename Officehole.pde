class Officehole{
  float x;
  float y;
  
  public Officehole(float x, float y){
    this.x=x;
    this.y=y;
  }
  void display(){
    fill(0,204,0);
    rect(x, y, 200, 600);
    fill(0,255,51);
    arc(300, 150, 200, 150, 0,TWO_PI);
    fill(255,255,255);
    arc(300, 150, 30, 30, 0,TWO_PI);
    
  }
}
