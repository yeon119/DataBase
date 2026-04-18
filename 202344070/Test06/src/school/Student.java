package school;

public class Student {
    String id;
    private String name;
    public int grade;
    public String address;

    public void showinfo() {
        System.out.println(name + ':' + address);
    }

    //getter getName 은 get에다가 프라이빗 변수를 하는거 저건 약속임 / 변수의 값을 반환
    public String getName() {
        return name;
    }

    //setter 외부에서 들어온 값을 내부에서 바꿔주는것 / 변수의 값을 설정(대입) 함부로 값이 들어오는걸 막음
    public void setName(String name) {
        this.name = name; // this 가 전역변수를 지정해줌 전역이랑 지역이랑
    }


    }

