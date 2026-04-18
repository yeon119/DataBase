package buyPhone;

public class Customer {
    private String name;
    private  int budget;

    public Customer(String name, int budget){
        this.name = name;
        this.budget = budget;
    }

    public int getBudget(){
        return budget;
    }

    public void buyPhone(Store store) {
       Phone phone = store.sellPhone("iphone", 200000);
       if (phone != null){
           System.out.println("구매 완료");
       }
       else {
           System.out.println("구매 불가");
       }
    }
}
