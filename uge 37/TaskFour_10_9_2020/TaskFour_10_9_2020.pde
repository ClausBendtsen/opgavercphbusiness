// TaskFour
void setup() {
size(800,800);

}

// 4.a print out numbers from 0 to 20 using a for loop.
void draw(){
  for(int i= 0; i <=20; i++){
    if(i%2 ==0){
  println(i);
    }
}

// 4.c print out the same result as in task 4.b using a while loop instead of a for loop.

int i = 0;
while (i<=20){
  if(i%2 ==0){
  println(i);
  }
  i++;
}
}
