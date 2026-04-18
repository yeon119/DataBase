package school;

public class Person {
    public String name;
    public double height;
    public double weight;
    public char gender;
    public boolean married;


    public Person() {
    }

    public Person(String name) {
        this.name = name;
    }
    public Person(String name, double height, double weight){
        this.name = name;
        this.height = height;
        this.weight = weight;

    }
}