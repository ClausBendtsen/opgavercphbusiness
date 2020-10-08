package Task3;

public class Monkey extends Animal{
    public Monkey(int nOfLegs) {
        super(nOfLegs);
    }

    @Override
    public void makeSound() {
        super.makeSound();
        System.out.println("brrrrr!");
    }
}
