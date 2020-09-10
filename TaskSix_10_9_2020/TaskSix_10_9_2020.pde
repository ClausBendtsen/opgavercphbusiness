//TaskSix

//void draw(){
//6.a make 2 integer variables named a and b. Print "Success!" if either of them is equal to 10 or if the sum is. If not, print "Failure!".

//a og b er random numre mellem 0,10
int a = (int)random(0,10);
int b = (int)random(0,10);

if(a==10 || b==10 ||a+b==10){
  println("Success");
} else{
  println("Failure");
}


//}

//6.b make 3 integer variables named x, y and z. Print "Success!" if their sum is 30, but none of them may have the value of 10, 20 or 30. Otherwise print "Failure!".

//variablerne defineres

int x = (int)random(0,30);
int y = (int)random(0,30);
int z = (int)random(0,30);

if((x+y+z==30) && (x|y|z) !=(10|20|30)){ // | kan bruges som mellemrum
  println("Success!");
} else {
  println("Failure!");
}
