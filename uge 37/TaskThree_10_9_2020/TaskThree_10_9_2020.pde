// Task 3

//farve variablerne
int redColor = 255;
int yellowColor = 254;
int greenColor = 255;
int bG = 0;
int gray = 149;

void setup(){
  size (800,800);
  frameRate(30);
}

void draw(){
background(bG);
fill(gray);
  //øverste cirkel - bruges til rødt lys
float x = width/2;
float y = height/6;
float radius = height*0.25;
circle(x, y, radius);
//key pressed for rødt lys
if (keyPressed) {
    if (key == '1') {
  fill(redColor,0,0);
  circle(x, y, radius);
    }
}

 //miderste cirkel - bruges til gult lys
 fill(gray);
float secondY = height/2;
circle (x, secondY, radius);
if (keyPressed) {
    if (key == '2') {
  fill(yellowColor,255,0);
  circle (x, secondY, radius);
    }
}


//nederste cirkel - bruges til grønt lys
fill(gray);
float thirdY = (secondY+secondY*3/4);
circle (x, thirdY, radius);
if (keyPressed) {
    if (key == '3') {
  fill(0,greenColor,0);
  circle (x, thirdY, radius);
    }
}
}
