public class City {
    private int id;
    private String name;
    private String cc;
    private String district;
    private int population;

    public City(int id, String name, String cc, int population) {
        this.id = id;
        this.name = name;
        this.cc = cc;
        this.population = population;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getCc() {
        return cc;
    }

    public int getPopulation() {
        return population;
    }

    @Override
    public String toString() {
        return " ID " + getId() +" Name " + getName() + " CC " + getCc() + " Population " + getPopulation();
    }
}
