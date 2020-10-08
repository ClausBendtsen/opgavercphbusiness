package Task3;
//child class to Animal
public class Tiger extends Animal{
    public Tiger(int nOfLegs) {
        super(nOfLegs);
    }

    @Override
    public void makeSound() {
        super.makeSound();
        System.out.println("Tiger goes grr!!");
    }

}
