//Task One 17-09-2020 Claus
void setup(){

  
  //1.a Write a function that prints an empty line and call it from setup();
emptyLine();

  //1.b Write a function that receives a string as a parameter and prints it. call this function from setup()

oneB("task one b");

  /*1.c Write a function that receives a string called "name"
   and an integer called "age" and call it from setup with your own name and age. 
   Have the function print the text "My name is \<name\>, I am <age> years old".
   */

printNameAndAge("Claus Bendtsen", 21);

}

//1.a
void emptyLine(){
println("");
}
//1.b
void oneB(String text){
  println(text);
}
//1.c
void printNameAndAge(String name, int age) {
 println("My name is " + name + ", I am " + age + " years old"); 
}
