import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MainController {
    List<City> cities;

    public MainController() {
        cities = new ArrayList<>();
    }

    public void runProgram() {
        getMyConnection();
        printConnection();
        printCityCount();
        printBigCities();
        populateCityList();
        printCityList();
    }

        public void printCityList() {
            for (City c:cities) {
                System.out.println(c);
            }
        }

    public Connection getMyConnection() {
        Connection connection = null;
        String urlSettings = "?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false";
        String url = "jdbc:mysql://localhost:3306/world";
        String userName = "root";
        String password = "Stoffer1319";

        try {
            connection = DriverManager.getConnection(
                    url + urlSettings,
                    userName,
                    password
            );

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void printConnection() {
        if (getMyConnection() != null) {
            System.out.println("There is a connection");
        }
    }

    public void printCityCount() {
        Connection connection = null;
        Statement stmt = null;
        ResultSet res = null;
        int total = 1;

        String sql = "";

        connection = getMyConnection();
        try {
            stmt = connection.createStatement();
            sql = "SELECT COUNT(*) from city";
            res = stmt.executeQuery(sql);
            while (res.next()) {
                System.out.println(res.getInt(total));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
public void printBigCities(){
        Connection connection = null;
        Statement statement = null;
        ResultSet res = null;

        String sql = "";

        connection = getMyConnection();
        try{
            statement = connection.createStatement();
            sql = "SELECT * FROM city WHERE POPULATION >= 5000000";
            res = statement.executeQuery(sql);
            while(res.next()){
                System.out.println(res.getString("Name"));
            }
        }catch(SQLException e) {
            e.printStackTrace();
        }
}
public void populateCityList(){
        Connection connection = null;
        Statement statement = null;
        ResultSet res = null;

        String sql = "";
        City tmpCity = null;

        connection = getMyConnection();

        try{
            statement = connection.createStatement();
            sql = "SELECT * FROM city";
            res = statement.executeQuery(sql);
            while(res.next()){
                int id = res.getInt("ID");
                String name = res.getString("Name");
                String cc = res.getString("CountryCode");
                int population = res.getInt("Population");
                tmpCity = new City(id,name,cc,population);
                cities.add(tmpCity);
            }
        }catch(SQLException e) {
            e.printStackTrace();
        }
}
}