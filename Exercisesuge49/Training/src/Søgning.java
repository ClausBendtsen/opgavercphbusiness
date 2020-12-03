import java.util.Arrays;
import java.util.List;

public class Søgning {

    public int hasString(String[] strings, String string) {
    List<String> stringList = Arrays.asList(strings);
    if(stringList.contains(string)) {
        return stringList.indexOf(string);
    }
    return -1;
    }
}
