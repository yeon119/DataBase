package cooperation;

public class Student {
    private String name;
    private int money;

    public Student(String name, int money) {
        this.name = name;
        this.money = money;
    }

    public void takeBus(Bus bus) {
        bus.take(1000);
        money -= 1000;

    }

    public boolean takeSubway(Subway subway) {
        if(money < Subway.minMoney){ // 저기서 서브웨이는 인스턴흐 변수  노란 형광은 인텔리제이가 보기에 저건 좀 별로라는거임
            return false;             // 나중에 클래스 변수로 변경   
        }
        subway.take(1500);
        money -= 1500;
        return true;
    }

    public void showInfo() {
        System.out.println(name+","+money);
    }
}
