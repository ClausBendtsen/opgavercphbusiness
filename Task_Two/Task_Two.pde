// Task Two 17-09-2020 Claus

//2.a Look at the file TaskTwoA and fill out the missing line, using the happy boolean. 
boolean happy = true;

void setup() {
   if (iAmHappy())
   {
     println("I clap my hands");
   }
   else
   {
     println("I don't clap my hands"); 
   }

//2.b Write a function that receives to integers as parameters and returns the sum of them.


println(returnInts(1000, 337));

/*2.c Write a function that receives a string and returns it as uppercase.
(Hint: ".toUpperCase()"
Further hint: https://www.w3schools.com/jsref/jsref_toUpperCase.asp )
*/

println(uppercase("i did it!"));


/*2.d Write a function that receives a string and 
returns true if the first letter of the string is uppercase.
(Hints: ".charAt(0)" and "Character.isUpperCase('a');" )
*/

println(upperCaseCheck("Donkey"));
println(upperCaseCheck("notDonkey"));


}

//2.a
boolean iAmHappy()
{
  // fill out what is missing here: 
  return happy;
}


//2.b
int returnInts(int tal1, int tal2){
 return(tal1 + tal2); 
}

//2.c

String uppercase(String rndom) {
 return rndom.toUpperCase(); 
}

//2.d

boolean upperCaseCheck(String textHere) {
 return Character.isUpperCase(textHere.charAt(0)); 
}
