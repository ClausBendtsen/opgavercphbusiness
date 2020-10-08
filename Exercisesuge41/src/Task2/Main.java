package Task2;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {

        Room room1 = new Room(4, 1, 2, 4);
        Room room2 = new Room(6, 1, 4, 6);
        Room room3 = new Room(8, 2, 8, 12);

        ArrayList<Room> rooms = new ArrayList();
        rooms.add(room1);
        rooms.add(room2);
        rooms.add(room3);
        System.out.println(rooms);

        Building building = new Building(rooms, 8, 4, true);
        int lamps = 0;
        for (Room r: building.getRooms()){
        lamps += r.getNumberOfLamps();
        }
        System.out.println("Number of lamps in total; " +lamps);
    }
}
