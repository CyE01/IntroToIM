void keyPressed() {
  int brickNumber = blankBrick(cells);
  int up = brickNumber - columns;
  int right = brickNumber + 1;
  int down = brickNumber + columns;
  int left = brickNumber - 1;

  if (brickNumber < columns) { // Set up the function 
    up = brickNumber;
  } else if (brickNumber % columns == columns - 1) {
    right = brickNumber;
  } else if (brickNumber > numberCells - columns) {
    down = brickNumber;
  } else if (brickNumber % columns == 0) {
    left = brickNumber;
  }

  if (key == CODED) { // Excute the fucntion 
    if (keyCode == DOWN) {
      posChange(cells, brickNumber, down);
    } else if (keyCode == LEFT) {
      posChange(cells, brickNumber, left);
    } else if (keyCode == UP) {
      posChange(cells, brickNumber, up);
    } else if (keyCode == RIGHT) {
      posChange(cells, brickNumber, right);
    }
  }
}
