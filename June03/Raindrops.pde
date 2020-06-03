PShape raindrop;

//Create an array
Drop[] drops= new Drop[85];

void setup () {
  size (650, 350);
  smooth();
  background (210, 241, 245);
  for (int i=0; i< drops.length; i++){
  drops [i] = new Drop();
  }


// Create the raindrop group
PShape topShape, bottomShape;
raindrop = createShape(GROUP);

topShape = createShape (ELLIPSE, 50, 30, 30, 30);
topShape.setFill(color(90, 199, 247));
topShape.setStroke(color(90, 199, 247));
bottomShape = createShape (TRIANGLE, 65, 28, 35, 28, 50, 3); 
bottomShape.setFill(color(90, 199, 247));
bottomShape.setStroke(color(90, 199, 247));


// Combine "topShape" and "bottomShape" as raindrop  
raindrop.addChild(topShape);
raindrop.addChild(bottomShape);
}


// Draw the raindrop
void draw() {
  background(210, 241, 245);
  for (int i=0; i< drops.length; i++){
  drops[i].fall();
  drops[i].show();
}
}

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
}
