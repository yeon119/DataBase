package cooperation;

public class Subway {
    public static int minMoney =1500; //인스턴스변수 만약 static이 붙으면 클래스변수 인스턴스변수는 모든 인스턴스에 생김
    private String number;
    private int passengerCount;
    private int money;

    public Subway(String number) {
        this.number = number;

    }

    public void showInfo() {
        System.out.println(number+"," + money + "," + passengerCount);
    }


    public boolean take(int money){
        if(money != minMoney){
            return false;
        }
        this.money += money;
        this.passengerCount++;
        return true;
    }
}
