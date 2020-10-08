package Task3;



public class Animal implements AnimalSound{

        private int numberOfLegs;

        public Animal (int nOfLegs){
            this.numberOfLegs = nOfLegs;
        }

        public int getNumberOfLegs() {
            return numberOfLegs;
        }

    @Override
    public void makeSound() {

    }

}


