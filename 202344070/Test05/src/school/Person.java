package school;
// 변수들은 소문다 클래스는 대문자

//import school.resource.Test;//class는 자료형이다 권장 o 
import school.resource.*; //권장 x recourse 전부를 불러오지만 권장은 하지 않음


public class Person {
    public String name;
    public double height;
    public double weight;
    public char gender;
    public boolean married;

    public void showInfo() {
        Test test; //int a
        System.out.println(name);
    }
}
7uu