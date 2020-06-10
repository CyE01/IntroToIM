void bricks() {
  for (int i = 0; i < numberCells; i++) { // Define cells 
    cells[i] = i + 1;
  }

  posChange(cells, numberCells-3, numberCells-2); // Excute positionChange with Cell 0
  cells[numberCells-1] = 0;
}

int blankBrick(int[] arr) { // Locate and trace the unnumbered bricks
  int brickNumber = -1;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 0) {
      brickNumber = i;
    }
  }

  return brickNumber;
}
