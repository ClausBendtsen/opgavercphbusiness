import java.util.Scanner;

public class Græsset {

    public int dageTilGræsSkalSlås(double længdeNu,double maxLængde){
        int dage = 0;
        System.out.println("Nuværende længde på grææset: ");
        while(længdeNu > maxLængde){
            længdeNu = længdeNu + 0.8;
            dage++;
        }
        System.out.println("Dage til græs skal slås: ");
        return dage;
    }
}
