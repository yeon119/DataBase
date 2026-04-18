package univ;

public class Start {
    public static void main(String[] args) {
        Student s = new Student("12345", "김인하");


        s.setGrade(2);
        s.setName("김미영");
        s.showInfo();
        Student2 s2 = new Student2("1111");
        s2.setName("김용현").setGrade(2).showInfo(); //반환타입이 s2라 가능 차례대로 알아서 실행가능
        //s.setGrade(2).setName("김미영"); 이건 안되는거임 하지만 할수있찌
    }
}
