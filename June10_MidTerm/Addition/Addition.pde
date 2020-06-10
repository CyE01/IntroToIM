//Set up variables
import processing.sound.*;
int columns = 3;
int rows = 3;
int numberCells = 9;
int brickSize = 200;
int[] cells = new int[numberCells];
PFont f;
PImage bg; 
import processing.sound.*;

SoundFile file;
String audioName = "/Users/chenyu/Desktop/bgm.mp3";
String path;

void setup() {
  size(601, 601);

  bricks(); // Sjow color-filled bricks

  String[] fontList = PFont.list(); 
  printArray(fontList);
  f = createFont("Verdana-Italic", 48);
  file = new SoundFile(this, "/Users/chenyu/Desktop/bgm.mp3"); // Set up background music
  file.play();
}

void draw() {
  bg = loadImage("/Users/chenyu/Desktop/bg1.png"); // Set up background picture
  background(bg);

  for (int i = 0; i < columns; i++) { // Set up number system to name the bricks
    for (int r = 0; r < rows; r++) {
      int index = i + r * columns;

      stroke(0);
      noFill();
      if (cells[index] > 0) { 
        fill(246, 165, 247);
        rect(i*brickSize, r*brickSize, brickSize, brickSize); // Make the brick size

        fill(245, 200, 228);
        textSize(48);
        textFont(f);
        textAlign(CENTER, CENTER);
        text(cells[index], i*brickSize + brickSize/2, r*brickSize + brickSize/2); // Matches up the correct number to the correct bricks 
      }
    }
  }
}
