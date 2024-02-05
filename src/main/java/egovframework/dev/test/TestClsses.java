package egovframework.dev.test;

public class TestClsses {

    public static void main(String args[]) {

        HumanClass hc = new HumanClass(30, "남", "조동국");         // null


        HumanClass hc1 = new HumanClass();         // null
        HumanClass hc2 = hc1;         // null

        hc2.name = "김하경";

        System.out.println(hc);
        System.out.println(hc1);
        System.out.println(hc2);
    }
}
