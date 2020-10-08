package Task2;

public class Room {
    //attributes
    private int walls;
    private int numberOfDoors;
    private int numberOfLamps;
    private int numberOfWindows;
    //constructor
    public Room(int walls, int nOfDoors,int nOfLamps,int nOfWindows){
        this.walls = walls;
        this.numberOfDoors = nOfDoors;
        this.numberOfLamps = nOfLamps;
        this.numberOfWindows = nOfWindows;
    }

    @Override
    public String toString() {
        return "Room{" +
                "walls=" + walls +
                ", numberOfDoors=" + numberOfDoors +
                ", numberOfLamps=" + numberOfLamps +
                ", numberOfWindows=" + numberOfWindows +
                '}';
    }

    public int getWalls() {
        return walls;
    }

    public int getNumberOfDoors() {
        return numberOfDoors;
    }

    public int getNumberOfLamps() {
        return numberOfLamps;
    }

    public int getNumberOfWindows() {
        return numberOfWindows;
    }
}
