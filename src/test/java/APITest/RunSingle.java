package APITest;

import com.intuit.karate.junit5.Karate;
public class RunSingle {
    @Karate.Test
    public Karate runTest(){
        return Karate.run("deleteRequest").relativeTo(getClass());
    }
}
