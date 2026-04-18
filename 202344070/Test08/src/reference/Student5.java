package reference;

public class Student5 {
    public String id;
    public String name;
    private Subject2 subject1;
    private Subject2 subject2;

    public Student5(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public void setSubject1(String name, int score) {
        subject1 = new Subject2();
        //subject1.name = name
        subject1.setName(name);
        subject1.setScore(score);
    }

    public void setSubject2(String name, int score) {
        subject2 = new Subject2();
        subject2.setName(name);
        subject2.setScore(score);
    }


    public void ShowInfo() {
        System.out.println(id);
        System.out.println(name);
        subject1.showInfo();
        subject2.showInfo(); // 계속 반복될거같거나 일정한 형식을 가진다면 메소드를 만들면됨
//        System.out.println(subject1.getName() + ":" + subject1.getScore());
//        System.out.println(subject2.getName() + ":" + subject2.getScore());

    }


}
