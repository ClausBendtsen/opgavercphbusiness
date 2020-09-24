//Task 1 (Algorithms) Claus 24-09-2020

// 1.a Create an integer array with the values { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } 
int intArray[] = {8,9,1,5,11,13,7,4,6,3,12,10,2};

//1.b implement your own sorting algorithm for the int[] array, by creating a method that takes in the int[] array and 
//loops through it with a for loop. for every step in the for loop, you must compare the values of array[i] and array[i + 1] and swap them if [i] is greater than [i + 1]

void sortArray() {
 for (int i = 0; i < intArray.length - 1; i++) {
  if(intArray[i] > intArray[i +1]) {  
    swap(intArray, i,i+1);
  }
 }
}

void swap(int[] refArray, int i1, int i2){
  int temp = refArray[i1];
  refArray[i1] = refArray[i2];
  refArray[i2] = temp;
  
}

//1.c call the method created in 1.b in a while loop from setup(), until the list is sorted. 

void setup() {
  int i=0;
  while (i < intArray.length) {
    i++;
  sortArray();
}
println(intArray);
}


//1.d Add a boolean to keep track of when the list is sorted to avoid creating an infinite loop.
