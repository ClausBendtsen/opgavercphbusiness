//Task Five 17-09-2020 Claus

//5.a Create an array of Students (the class created in Task 3) with 10 elements in it. Each student must have a unique name.

Student[] Students = new Student[10];

//String[] studenterne = new String[10];
void setup() {
  Students[0] = new Student ("Claus", 21, false, 'a');
  Students[1] = new Student ("Nicolai", 22, false, 'a');
  Students[2] = new Student ("Benny", 23, false, 'a');
  Students[3] = new Student ("Frederik", 32, false, 'a');
  Students[4] = new Student ("Bent",44, false, 'a');
  Students[5] = new Student ("Bo", 26, false, 'a');
  Students[6] = new Student ("Ib", 66, false, 'a');
  Students[7] = new Student ("Torben", 10, false, 'a');
  Students[8] = new Student ("Jens", 60, false, 'a');
  Students[9] = new Student ("Jes", 41, false, 'a');
 
 println(studentNames(Students, 1));
 println(allNames(Students, "Claus"));
 
}
 void Student(String[] Students) {
    for (int i = 0; i < Students.length; i++) {
      println(Students[i]);
    }
   
  }

//5.b Create a function that takes in the array from 5.a as a parameter as well as an integer.
//The function should return the field "name" (the name of the student) and print it.
//Call this method with different parameters (only the integer - not the array) from the setup() of Datamatik.

String studentNames(Student[] students, int a) {
return students[a].name;
}

//5.c Create a similar function to that of 5.b, but instead of receiving the array and an integer, it receives the array and a string. Loop through all elements in the array until you find the element with the name received as a parameter. Then return the index of that student. Call this method with different names from the setup() of Datamatik


int allNames (Student[] students, String a) {
  for (int i = 0; i < students.length; i++) {
  if(Students[i].name == a) {
    return i;
}

}
return -1;
}
