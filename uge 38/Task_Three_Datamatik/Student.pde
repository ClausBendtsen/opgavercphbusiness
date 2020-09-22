//3.c in the Student tab, define the class "Student" and add 4 fields: "name", "age", "isFemale", "datamatikerTeam" using appropriate data types for each.
class Student {
String name;
int age;
boolean isFemale;
char datamatikerTeam;

//3.d in the Student tab, add a Constructor that takes in 4 parameters with the names "tmpName", "tmpAge", "tmpIsFemale", "tmpDatamatikerTeam"
//with the same data types used in 3.c
Student(String tmpName, int tmpAge, boolean tmpIsFemale, char tmpDatamatikerTeam) { //constructor
  name = tmpName;
  age = tmpAge;
  isFemale = tmpIsFemale;
  datamatikerTeam = tmpDatamatikerTeam;
}

//3.e populate the fields created in 3.c with the parameters of the constructor added in 3.d  

String nameAndteam(){
 return(name + " hold " + datamatikerTeam); 
}

}
