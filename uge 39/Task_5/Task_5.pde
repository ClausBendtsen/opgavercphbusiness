//task 5

//5.a Create a double int called board[][] with the length of 8 in both arrays
int rows = 8;
int cols = 8;

int[][] board = new int[cols][rows];
int sideLength;


//5.b In setup() set the size to 350, 350

void setup() {
 size(350,350); 
 rectMode(CENTER);
 sideLength = 40;
  // 5.c In setup() create a double for loop that loops through the board and alternates between assigning the value of 0 and 1 (e.g. board[x][y] = 0;).
  for(int i = 0; i < cols; i++){
  for (int j = 0; j <rows; j++){
    board[i][j] = 0;
  }
}
  
}

//5.d In draw() create a double for loop that loops through the board and draws a rect for each element with the sideLength of 40 (e.g. rect(x * sideLength, y * sideLength, sideLength, sideLength); )

void draw() {
  int x = 0;
 for (int i = 0; i<250; i++) {
   fill(0);
   rect(200, 150, sideLength, sideLength);
   for(x=0; x<300; x++) {
     fill(255);
     rect(100, 140, sideLength, sideLength);
   }
 }
}

   
   
