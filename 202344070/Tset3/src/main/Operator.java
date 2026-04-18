package main;

public class Operator {
    public static void main(String[] args) {
        int num1 = 1;
        int num2 = 1;
        int num3 = 1;
        // 부호 연산자
         num1 = -num2;
         num2 = +num3; //거의 사용할일 없음
        System.out.printf("%d, %d\n", num1, num2);


        //산술연산
        num1 = 10 / 3; //3
        num2 = 10 % 3; //1 나머지 연산자 엄청 많이 쓸 예정
        System.out.printf("%d, %d\n", num1, num2);

        //증감연산
        num1++; //4
        num2--; //0
        System.out.printf("%d, %d\n", num1, num2);

        //관계(비교)연산자 결과값은 무조건 boolean
        var r1 = num1 == num2; //r1, r2 는 boolean 자료형
        var r2 = num1 != num2;

        var msg = "num1!=num2 -> %b".formatted(r2);
        System.out.println(msg);

        //논리연산 결과값은 boolean
        //논리연산자의 피연산자ㅇ는 boolean 보통 조건문 등등에서 사용
        var r3 = r1 && r2;
        var r4 = r1 || r2;
        var r5 = !r1;

        //비트연산자
        int a = 0b1010; //int는 4바이트 = 8비트 근데 저 0b1010은 4비트 =28비트가 남음
        //위의 저 코드는 0xA, 10
        int b = 0b1100; // 0xC
        System.out.println(a & b); //1000 = 8? 2진수의 연산 => 더하기
        System.out.println(a | b); // 1110 = 14 뺴기
        System.out.println(a ^ b); //0110 6 같지 않아야 1
        System.out.println(a); // 10
        System.out.println(~a); // -11 -> -11인 이유는 ~를 붙이면 1의보수가 되는데 1의 보수는 +1을 해주지 않았기 때문에 -11이 나옴

        //이동연산자 = shift 연산자 이거 제미나이한테 다시 설명
        int c = 0b0001; // =1
        int d = 0b1000; // =8
        int e = -8;// -8
        System.out.println(c << 2); //c를 왼쪾으로 2비트 옯김
        System.out.println(d >> 2);//d를 오른쪽으로 2비트 옮김
        System.out.println(e >>> 2);// e를 오른쪽으로 3비트 옮김 = 엄청 큰 양수가 옯김 이유는 밀어버리먄 0이 생겨서?
        //비트 연산자의 활용
        final int READY = 0b0001; //준비 완료
        final int ERROR = 0b0010; //에러발생
        final int RUN = 0b0100; //가동중

        int currentStatus = 0b0011; //현재상태
        //아래 코드는 공지사항에 있음

        int rgb = 0xfabdff10;
        int green = 0x0000ff00;
        int value = rgb & green; //0x00001100
        value = rgb >> 8; //0x00000011 다른 예시로 ip주소가 있음
        int ip = 0xffffffff; //255.255.255.255
        
     }
}
