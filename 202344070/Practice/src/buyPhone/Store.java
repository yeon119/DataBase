package buyPhone;

public class Store {
    private Phone  phone;

    public Store(Phone phone) {
        this.phone = phone;
    }

    public Phone sellPhone(String model, int budget){
        if(model.equals(phone.getModel()) && budget >= phone.getPrice() ) {
            registerPayment();
            discountPromotion();
            saveData();
            return phone;
        }
        else {
            return null;
        }
    }

    private void registerPayment() {
        System.out.println("요금제를 등록합니다.");
    }

    private void discountPromotion(){
        System.out.println("프로모션 할인을 진행합니다.");

    }

    private void saveData() {
        System.out.println("자료를 저장합니다.");
    }
}
