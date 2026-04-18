package cooperation;

public class Start {
    public static void main(String[] args) {
        Student s1 = new Student("김미영", 5000);
        Student s2 = new Student("김인하", 10000);
        Bus bus = new Bus("11우1111");
        Subway subway = new Subway("1호선");

        s1.takeBus(bus);
        s2.takeBus(bus);
        s2.takeSubway(subway);

        s1.showInfo();
        s2.showInfo();
        bus.showInfo();
        subway.showInfo();
    }
}
