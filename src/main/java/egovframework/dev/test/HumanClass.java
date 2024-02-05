package egovframework.dev.test;

public class HumanClass {

    public HumanClass() {
    }
    public HumanClass(int age) {
    }
    public HumanClass(int age, String gender) {
    }
    public HumanClass(int a, String g, String n) {
        age = a;
        gender = g;
        name = n;
    }

    int age;
    String gender;
    String name;


    @Override
    public String toString() {
        return "HumanClass{" +
                "age=" + age +
                ", gender='" + gender + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
