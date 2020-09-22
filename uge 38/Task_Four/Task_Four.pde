//Task Four 17-09-2020 Claus
//For all exercises in Task 4, you are allowed to complete them with arrays of a fixed size. 
//But do consider how the functions you write in 4.b, 4.c, 4.d, 4.e would work, if the array received as a parameter would not have a fixed length.

/*4.a create arrays of the following type and assign it at least 3 different values: 
    - Integer array
    - String array
    - boolean array
*/
 
 int[] intArray = new int[3];
 String[] stringArray = new String [5];
 boolean[] booleanArray = new boolean [3];
/*booleanArray[0] = true;
booleanArray[1] = false;
booleanArray[2] = true;
*/

 void setup(){
  for(int i =0;i<3;i++) {
   intArray[i] = (int)random(0,20);
   println(intArray[i]);
   stringArray[i] = "hygge " +(int)random(0,10);
   println(stringArray[i]);
  }
  
  //println(sumOfArray(intArray1));
  getAverage(arrayOfInt);
 } 
  

// 4.b Write a function that takes in an array of strings as parameter and prints each string.



// 4.c Write a function that receives an integer array as a parameter and returns the sum of all elements in the array.

int sumAfArray(int[] intArray1) {
  int sum = 0;
  for (int i = 0; i < intArray1.length; i++) {
  sum += intArray1[i];
  }
  return sum;
  
}


// 4.d Write a function that receives an integer array as a parameter and returns the average value.

void getAverage(int[] arrayOfInt){ //metodens parameter
  int sum = sumAfArray(arrayOfInt);
  println(sum);
  
  
  
}



//4.e Consider how you could write a function that takes in an integer array as a parameter and returns the array sorted from lowest to highest value.
