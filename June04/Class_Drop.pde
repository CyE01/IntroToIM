//Create a class
class Drop {
  float x=random(width);
  float y=random(height);
  float ySpeed=random (0.5,1);

  void fall() {
    y+= ySpeed;
  }

  void show() {
    shape(raindrop, x, y);
  } 


void raindropMove (){
  fill(0, 0, 255, 128);
  stroke(0);
  pushMatrix ();
  translate (x-55,y-80);
   rotate(radians(45));
  shape(raindrop, x, y);
  popMatrix();
 
}
}
