import reference.Student5;
import reference.Subject2;
import school.Person;
public class Start {
    public  static  void main(String[] args){
        Person p1 = new Person();
        p1.name = "이미영";
        p1.height = 160.0;
        p1.weight = 60.2; //  변수는 4개 args도 있어야함 매우 중요 이거 시험에 나올수도있음 !!

        Student5 s5 = new Student5("1111", "jang"); //학번이랑 이름이 무조건 들어가랴함
        s5.setSubject1("C",96);
        // 위 아래는 같은 거임
//        s5.subject1 = new Subject2(); //얘네는 이제 셋터만으로만 접근이 가능함
//        s5.subject1.setName("C");  그래서  setsubject로만 가능
//        s5.subject1.setScore(96);
        s5.setSubject2("java", 40);

        Person p2 = new Person("김미영");

        Person p3 = new Person("박미영", 160.0,60.2 );
    }
}