import java.sql.SQLOutput;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class StortBogstav {
    Scanner sc = new Scanner(System.in);
    List<String> sentences = new ArrayList<>();

    public void addSentence(String sentence) {
        sentence = sc.nextLine();
        sentences.add(sentence);
    }

    public List<String> getSentences() {
        return sentences;
    }

    public int checkForUpperCase(){
        int upperCaseCount = 0;
        for(String sentence : sentences) {
            char firstChar = sentence.charAt(0);
            if(Character.isUpperCase(firstChar)){
                upperCaseCount++;
            }
        }
        System.out.println("number of sentences beginning with uppercase letters ");
        return upperCaseCount;
    }
    public void showAllSentences() {
        for(String sentences : sentences) {
            System.out.println(sentences);
        }
    }
}