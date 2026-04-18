package school;

public class Person {
   public String name;
   public double height;
   public double weight;
   public  char gender;
   public boolean married;

   public Person() { // 기본 생성자가 없으면 만들면됨

   }

    public Person(String name) { // 생성자 public가 없으면 다른 클래서으세 호출할수없음
       this.name = name;
   }



}
