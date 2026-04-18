package cooperation;

public class Bus {
    private String number;
    private int passengerCount;
    private int money;

    public Bus(String number) {
        this.number = number;

    }

    public void showInfo() {
        System.out.println(number+"," + money + "," + passengerCount);
    }

    public void take(int money){
        this.money += money;
        this.passengerCount++;
    }

}
