package Task1;

public class Driver {
    //attributes
    private String name;
    private int age;

    //constructor
    public Driver(String driverName, int driverAge) {
        this.name = driverName;
        this.age = driverAge;
    }

    @Override
    public String toString() {
        return "is driven by: " + name;
    }


}
