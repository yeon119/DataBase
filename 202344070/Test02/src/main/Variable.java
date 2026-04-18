package main;

public class Variable {
    public static void main(String[] args){
        int binVal = 0b1111;
        int octVal = 017;
        int decVal = 15;
        int hexVal = 0xf;
        System.out.printf("%d %d %d %d\n", binVal, decVal, octVal, hexVal);

        char grade_1 = 49;
        short grade_2 = 49;
        System.out.println(grade_1); //1
        System.out.println(grade_2); //49  = 자료형이 다르기 떄문 자료형은 크기도 중요하지만 내용을 어떻게 해석할지도 달라짐

        //p.57
        boolean isPass = true;
        if(isPass == false) {  // !ispass로 할수있는데 각자의 오타율이나 등등으로 각자가 편한 방식을 찾으면 됨
            System.out.println(("가!"));
        } else {
            System.out.println("오세요");
        }

        //p.57
        var age = 21; // 21뒤에 L을 붙이면 long 타입이 됨
        var height = 165.7; // 165.7 뒤에 f를 붙이면 float 타입이 됨 f나 l의 대소문자는 중요하지 않음

        System.out.println(age);
        System.out.println(height);

        //p.59
        final int MAX_NUM = 100;
        // MAX_NUM = 10; 위에 final이 붙었기 떄문
        final int MIN_NUM; // 상수는 바로 초기화 해주지 않아도 뒤에서 해줘도 큰 문제가 없음
        MIN_NUM = 0;
        //MIN_NUM = 1; => 이친구는 위에서 이미 fianl 로 초기화 해주었기 떄문에 다시하면 위의 예시처럼 에러가남

        //p.63
        int a = 32;
//        int b = 10000000000; int 자료형의 최대를 넘겨서 에러
//        int b = 10000000000L;
//        long b = 10000000000; long인데 실제 값음 int 이기떄문에 에러가 일어남
        long b = 10000000000L;
//        long b = 10_000_000_000L; 이렇게 언더바를 사용해도 괜찮음
        float c = 23.6f;
        double d = 32.6;
        b = a; // b는 long 타입이고 a는 int 타입이라 문제가 없음
        a = (int)b; // int 자료형으로 바꿔주어야함
        c = a; //문제가 없나? 다시 확인 필요
        a = (int)c; // int 형으로 바꾸면서 뒷자리를 날려도 괜찮아 라고 해주는것

        //double f = 10.1f + 1; // 실수 +정수 계산을 할려함 둘은 다르기에 원래 계산이 안됨 = 한쪽을 맞춰주어야함
        //double f = 10.1f + 1.0f;
        double f = 10.1 + 1.0f; // 물어보기
     }


}
