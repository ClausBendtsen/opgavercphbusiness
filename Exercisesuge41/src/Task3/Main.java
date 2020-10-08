package Task3;

import java.util.ArrayList;

public class Main{
    public static void main(String[]args){

        Tiger tiger = new Tiger(4);
        Monkey monkey = new Monkey(2);
        Cow cow = new Cow(4);
        ArrayList<Animal> animals = new ArrayList();
        Zoo zoo = new Zoo();
        zoo.addAnimal(tiger);
        zoo.addAnimal(cow);
        zoo.addAnimal(monkey);
        zoo.makeAllSounds();




    }


}
