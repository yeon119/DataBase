package buyPhone;

public class Phone {
    private String model;
    private int price;

    public Phone(String model, int price) {
        this.model = model;
        this.price  = price;
    }

    public String getModel(){
        return model;
    }

    public int getPrice() {
        return price;
    }
 }
