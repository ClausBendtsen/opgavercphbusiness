package Task2;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class Building {
    private ArrayList<Room> rooms;
    private int numberOfBathrooms;
    private int numberOfFloors;
    private boolean isOfficeBuilding;

    public Building(ArrayList<Room>rooms, int nOfBathrooms, int nOfFloors, boolean isOfficeBuilding){
        this.rooms = rooms;
        this.numberOfBathrooms = nOfBathrooms;
        this.numberOfFloors = nOfFloors;
        this.isOfficeBuilding = isOfficeBuilding;



    }

    public ArrayList<Room> getRooms() {
        return rooms;
    }

    public int getNumberOfBathrooms() {
        return numberOfBathrooms;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public boolean isOfficeBuilding() {
        return isOfficeBuilding;
    }
}
