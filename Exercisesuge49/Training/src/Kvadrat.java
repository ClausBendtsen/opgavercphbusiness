public class Kvadrat {

    public void printKvadrat(int numre, char tegn) throws IllegalArgumentException {
        if(numre > 1 || numre < 20) {
            throw new IllegalArgumentException();
        }
        for (int i = 0; i <= numre; i++) {
            for (int j = 0; j < numre; j++)
                System.out.print(tegn + "\t");
            }
            System.out.println("\n");
        }
    }
