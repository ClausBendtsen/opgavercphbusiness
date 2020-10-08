package Task1;

import java.sql.SQLOutput;

public class Main {
    public static void main(String[] args) {
        Driver driver1 = new Driver("Claus Bendtsen", 21);
        Car car1 = new Car("Toyota", "HighAce", 1996, "Wagon");
        Car car2 = new Car("Suzuki ", "X-Cross", 2018, "SUV");

        car1.getDriver();
        car2.getDriver();
        System.out.println(car1);
        System.out.println(driver1);
        System.out.println(car2);
        System.out.println(driver1);

    }
}
