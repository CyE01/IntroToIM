// Move around the bricks and erase the former brick
void posChange(int[] arr, int i, int r) {
  int x = arr[i];
  arr[i] = arr[r]= x;
}
