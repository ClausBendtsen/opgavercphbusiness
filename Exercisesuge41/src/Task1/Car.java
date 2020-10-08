package Task1;

public class Car {
    //attributes
    private String make;
    private String model;
    private int year;
    private String bodyStyle;
    private String driver;

    //constructor
    public Car(String carMake, String carModel, int carYear, String carBodyStyle) {
        this.make = carMake;
        this.model = carModel;
        this.year = carYear;
        this.bodyStyle = carBodyStyle;

    }

    @Override
    public String toString() {
        return "Make: " + make + " Model: " + model + " year: " + year + " BodyStyle: " + bodyStyle;

    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {

        this.driver = driver;
    }

}
