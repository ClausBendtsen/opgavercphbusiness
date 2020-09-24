//Task 4 Claus 24-09-2020
int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };

//4.a Write a method that takes in an integer as a parameter and prints all values between 0 and 100 that are divisible by the parameter received.

void setup() {

  value(5);
}

int[] value(int x) {
  String values = "";
  int count = 0;

  for (int i=1; i<100; i++) {
    if (i%x==0) { 
      values = values + i + " ";
    }
  }

  println(values);

  int[] intArray = new int[count];

  return intArray;
}

//4.b add the following array to your code: int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 }


//4.c Write a method that returns a random element from the above array.


//4.d Write a function that takes an integer as a parameter and prints the number. After that, it subtracts one from the input and calls itself again (recursion). 
// If the input is less than zero, it should no longer call itself.
