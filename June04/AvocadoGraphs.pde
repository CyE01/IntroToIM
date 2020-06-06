// Set up variables for the intruction page
  PFont f1;
  color green;
  float x1, y1;
  PImage avocados; 
  
  String message= "Welcome to Chenyu's Data Visualization page.\n The following presentation is \nabout avocado price changes in the US.";

// Set up variables for the graph page
  PFont f;
  color black;
  float x,y;
  
 String message1 = "Avocado Price \n(Dollar For Every 100 Avocados)";
 String message2 = "Total volume \n(Unit: Ten Thousands)";
 
 PriceGraph g;

//Set up the canvas
void setup(){
 
  size(800,800);
  g = new PriceGraph ();
  
//Set up the background image
  avocados = loadImage("/Users/chenyu/Desktop/noticia1.jpg");
  background(avocados);
 
//Add text to the intruction page 
  String[] fontList = PFont.list(); 
  printArray(fontList);

  f1 = createFont("IowanOldStyle-Italic", 40);
  textFont(f1, 40);
  green=color(25, 95, 14);

  x1=width/2;
  y1=height/2;

  fill(green);
  textAlign(CENTER);
  text(message, x1, y1);
  
//Add text to the graph (coordinate system)
  f = createFont ("IowanOldStyle-Italic", 18);
  textFont(f, 18);
  black=color(0);
}

//Draw the graph and excute the functions
void draw() {
 
 fill(225);
 stroke(0);
if (keyPressed==true) {
   g.move();  
 fill(black);
 text(message1, 400,745);
 text(message2, 120, 345);
if (keyPressed==false) {
   g.move();
}
  }

}
