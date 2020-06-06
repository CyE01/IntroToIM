PShape raindrop;
float x;
float y;

//Create an array
Drop[] drops= new Drop[155];

void setup () {
  size (650, 350);
  smooth();
  background (210, 241, 245);
  for (int i=0; i< 50; i++){
  drops [i] = new Drop();
  }

  
// Create the raindrop group
PShape topShape, bottomShape;
raindrop = createShape(GROUP);

x = random (1,400);
y = random (1,1000);

topShape = createShape (ELLIPSE, 50, 30, 30, 30);
topShape.setFill(color(x, y, x+y));
topShape.setStroke(color(x, y, x+y));
bottomShape = createShape (TRIANGLE, 65, 28, 35, 28, 50, 3); 
bottomShape.setFill(color(x, y, x+y));
bottomShape.setStroke(color(x, y, x+y));


// Combine "topShape" and "bottomShape" as raindrop  
raindrop.addChild(topShape);
raindrop.addChild(bottomShape);
}

// Draw the raindrop
void draw() {
  background(210, 241, 245);
  for (int i=0; i< 50; i++){
 
 if (mousePressed == false) {
  drops[i].fall();
  drops[i].raindropMove();
  
 }
  
 if (mousePressed == false) {
 } else {
  drops[i].fall();
  drops[i].show();
   
 }
}
}
