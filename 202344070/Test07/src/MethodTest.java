public class MethodTest {
    //static 을 앞에 붙여줘야하는지는 나중에 설명
    static int add(int num1, int num2) {
        int result = num1 + num2;
        return result;
    }

    public static void main(String[] args) {

        int num1 = 2, num2 = 3;
        int a = add(num1, num2);
        System.out.println(a);
        // main은 함수메소드라 호출을 해야하고 자바의 메인은 자바 가상머신이 알아서 호출함
    }
}

