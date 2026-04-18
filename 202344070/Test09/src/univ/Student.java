package univ;

public class Student {
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

    public void setName(String name) {
        this.name = name;
    }

    public void setGrade(int grade) {
        if (0 <= grade && grade <= 4) {
            // 반환타입이 void여도 return써도돠ㅣㅂ
            this.grade = grade;
            return;
        }

    }

    public void showInfo() {
        var n = id + ',' + name + '.' + grade; // 두 데이터를 하나로 연결하기 위해 문자열 연결 연산자로 변함
        System.out.println(n);
    }

    public Student(String id){
        this.id = id;
    }

    public Student(String id, String name){
        //this.id = id; 거기에 자기생성자를 호출하면 안됨(무한루프) ex(this(id, name) 같은거
        this(id);
        this.name = name;
    }

    public Student(String id, String name, int grade){
        //this.id = id;
        //this.name = name; 굳이 저렇게 여러줄 쓰지 않아도 상관없이 아래 처럼 써도됨
        this(id,name); // 이게 this 생성자 (다른 생성자에게 넘김)
        //this.grade = grade; // 세터에서 학년의 제한을 1에서 4까지만 햇음 근데 생성자에선 별도의 제한을 두지 않았음
        //class내의 자신의 메소드를 호출해도됨
        setGrade(grade); // 학년의 제한을 두기위함 근데 나중에 조건이 변하면 세터만 수정하면 되기때문에
        // this를 붙이지 않아도 상관없음

    }



}
