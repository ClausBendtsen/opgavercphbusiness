package Task3;

import java.util.ArrayList;

public class Zoo {
private ArrayList<Animal>animals;

public void makeAllSounds() {
    for(Animal a: animals){
        System.out.println(a);
    }
}

public void addAnimal(Animal animal){
    animals.add(animal);
}

public void printNumberOfLegs(){
    int legs = 0;
    for (Animal l:animals) {
    legs += l.getNumberOfLegs();
        System.out.println("Total number of legs in my zoo" + legs);
    }

}


}
