//Set the grpah (data and corrdinate system) as a class
class PriceGraph{

//Create a display function
void display(){

  size(800,800);
  background(1000,1000,1000);
  stroke(0);
  line (15,685, 485,685);
  line (15, 685, 15, 5);
  Table table = loadTable("/Users/chenyu/Desktop/Avocados.csv", "header");
  for (int i=0; i<1000;i++){
  TableRow row = table.getRow (i);
  
  float xpos = row.getFloat ("AveragePrice");
  float ypos = row. getFloat ("TotalVolume");
 
 fill(225);
 stroke(0);
 circle (xpos*100,ypos/10000,3);
  }
 
}
 
//Create a move function using transformation
void move () {
  background (159,245,124);
  Table table = loadTable("/Users/chenyu/Desktop/Avocados.csv", "header");
  for (int i=0; i<1000;i++){
  TableRow row = table.getRow (i);
  
  float xpos = row.getFloat ("AveragePrice");
  float ypos = row. getFloat ("TotalVolume");
  
  pushMatrix();
  translate (width/4,40);
  circle (xpos*100,ypos/10000,3);
  line (15,685,585,685);
  line (15, 685, 15, 5);
  popMatrix();

}
}
}
