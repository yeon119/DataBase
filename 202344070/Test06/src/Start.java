import school.Student;
import school.Person;

public class Start {
    public static void main(String[] args) {

        Person p2 = new Person("박현근");

       Person p1 = new Person();
       p1.name = "박현근";



        int i = 1; // 자료형 변수 = 값;
        Student stu1 = new Student();
        //stu1.id = "202344070"; default는 다른 패키지 접근이 안됨
        //stu1.name = "박현근"; private는 외부에서 접근 불가
        stu1.setName("박현근"); //setter로 대신 사용
        System.out.println(stu1);
        //System.out.println(stu1.id); 이 또한 default 여서 안됨
        //System.out.println(stu1.name); 얘도 private떄문에 안됨
        System.out.println(stu1.getName()); //getter을 대신 사용
    }
}
