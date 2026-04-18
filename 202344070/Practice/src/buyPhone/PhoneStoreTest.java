package buyPhone;

public class PhoneStoreTest {
    public static void main(String[] args) {
        Phone phone = new Phone("iphone", 100000);
        Store store = new Store(phone);
        Customer customer = new Customer("김미영", 2000000);
        customer.buyPhone(store);
    }
}
