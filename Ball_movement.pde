float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;
Officehole Oh;
void setup(){
  size(600,1200);
  Oh=new Officehole(200,150);
  //size(200,200);
  smooth();
  background(255);
}

void draw(){
  background(150);
  Oh.display();
  noStroke();
  fill(255,10);
  rect(200,600,0,0);

  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;

  // Check for bouncing
 if ((x > 0) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > 0) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  // Display at x,y location
  stroke(0);
  fill(255);
  ellipse(300,675,10,10);
}
