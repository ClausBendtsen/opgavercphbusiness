//Task Three 17-09-2020 Claus
void setup(){
// 3.i Returning to the Datamatik tab add a setup() function and in this function
//create a new object of the type Teacher and give it the name, age and gender of your teacher. 

  Teacher teacher = new Teacher("Tess", 30, true);
  
//3.j Also in the setup() function of Datamatik, create two new objects of the type Student. The first one, with your own name, age and gender. 
//The second one with the name, age and gender of the student sitting next to you.

  Student student1 = new Student("Claus", 21, false, 'a');
  Student student2 = new Student("Frederik", 21, false, 'a');
  
  //3.k in the setup() function print the name of the teacher
  println(teacher.teacherName());
  //3.l in the setup() function print the names of both students and which teams they are from. 
  println(student1.nameAndteam());
  println(student2.nameAndteam());
}
