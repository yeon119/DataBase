package univ;

public class Student2 {
    private String id;
    private String name;
    private int grade;

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getGrade() {
        return grade;
    }

    public Student2 setName(String name) {
        this.name = name;
        return this; // 자기주소를 리턴함
    }

    public Student2 setGrade(int grade) {
        if (0 <= grade && grade <= 4) {
            this.grade = grade;
        }
        return this;
//        if (0 <= grade && grade <= 4) {
//            return this;    // 반환타입이 void여도 return써도돠ㅣㅂ
//        }
//        this.grade = grade;
//        return this;


    }

    public void showInfo() {
        var n = id + ',' + name + '.' + grade; // 두 데이터를 하나로 연결하기 위해 문자열 연결 연산자로 변함
        System.out.println(n);
    }

    public Student2(String id) {
        this.id = id;
    }

    public Student2(String id, String name) {
        //this.id = id; 거기에 자기생성자를 호출하면 안됨(무한루프) ex(this(id, name) 같은거
        this(id);
        this.name = name;
    }

    public Student2(String id, String name, int grade) {
        this(id, name);
        setGrade(grade);

    }


}


