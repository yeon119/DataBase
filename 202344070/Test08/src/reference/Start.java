package reference;

public class Start {
    public static void main(String[] args){
        Student2 s2 = new Student2();
        s2.id = "1111";
        s2.name = "park";
        s2.subject1 = "C";
        s2.score1 = 90;
        s2.subject2 = "java";
        s2.score2 = 50;

        Student4 s4 = new Student4();
        s4.id = "3333";
        s4.name = "송미영";
        // s4.subject == null
        s4.subject1 = new Subject();
        s4.subject1.name = "C";
        s4.subject1.score = 50;
        s4.subject2 = new Subject();
        s4.subject2.name = "JAVA";
        s4.subject2.score = 50;
    }

    public class Student1 {
        public String id;
        public String  name;
        public  int score1;
        public int score2;
    }

    public static class Student2 {
        public String id;
        public String  name;
        public  int score1;
        public int score2;
        public String subject1; //과목 이름 점수 1이랑 과목 1이 세트 2도 뽁같음
        public String subject2;

    }
}
