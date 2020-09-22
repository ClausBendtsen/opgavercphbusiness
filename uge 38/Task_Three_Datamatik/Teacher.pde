//3.f in the Teacher tab, define the class "Teacher" and add 3 fields: "name", "age", "isFemale", using appropriate data types for each.
class Teacher {
String name;
int age;
boolean isFemale;

//3.g in the Teacher tab, add a Constructor that takes in 3 parameters with the names "tmpName", "tmpAge", "tmpIsFemale" with the same datatypes used in 3.f
  Teacher(String tmpName, int tmpAge, boolean tmpIsFemale){ //constructor
   name = tmpName;
   age = tmpAge;
   isFemale = tmpIsFemale;
    
  }
  
//3.h populate the fields created in 3.f with the parameters of the constructor added in 3.g
  
String teacherName(){
  return name;
}
}
