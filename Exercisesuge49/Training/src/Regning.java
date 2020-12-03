
public class Regning {

    public void calc(int num1, int num2) throws IllegalArgumentException {
        if (num1 <= 50 && num2 <= 50) {
            int addRes = num1+num2;
            System.out.println("Addition: " + addRes);

            int subRes = num1-num2;
            System.out.println("Subtraktion: " + subRes);

            System.out.println("Division: " + num1/num2);

            System.out.println("Multiplikation: " + num1*num2);
        } else {
            throw new IllegalArgumentException();
        }
    }
}