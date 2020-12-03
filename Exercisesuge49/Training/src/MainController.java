import java.util.List;
import java.util.Scanner;

public class MainController {
    Græsset græsset = new Græsset();
    Scanner scanner = new Scanner(System.in);
    Regning regning = new Regning();


    public void runProgram() {

        /*
        System.out.println("længde af græsset: ");
        System.out.println(græsset.dageTilGræsSkalSlås(scanner.nextDouble(),20));
*/
        //Kvadrat:
        /*
        Kvadrat kvadrat = new Kvadrat();
        try{
            kvadrat.printKvadrat(8,'*');
        } catch (IllegalArgumentException e) {
            e.printErrorMessageKvadrat();
        }
    }
*/
        //Regning
    /*
        try{
            regning.calc(5,4);
    } catch(IllegalArgumentException e) {
            e.printErrorMessageKvadrat();
    }
    */

        //Sortering

        //Stort bogstav
        StortBogstav stortBogstav = new StortBogstav();
        int choice = 0;

        while (choice != 9) {
            System.out.println("(1) Type sentence: ");
            System.out.println("(2) Check for uppercase");
            System.out.println("(9) Exit");
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    String sentence = scanner.nextLine();
                    stortBogstav.addSentence(sentence);
                    break;
                case 2:
                    List<String> sentences = stortBogstav.getSentences();
                    stortBogstav.showAllSentences();
                    System.out.println(stortBogstav.checkForUpperCase());
                    break;
                case 3:
                    System.out.println("Exiting");
                    break;

            }
        }
    }
}


