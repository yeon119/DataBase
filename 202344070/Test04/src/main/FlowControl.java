package main;
//java.util 패키지의 Scanner 클래스를 사용하겠다

import java.util.Scanner; //scanner 써줄려면 이걸 해야함 저건  class임 파이썬 임포트문 나중에 손으로 한번 쳐보는게 좋음

public class FlowControl {
    public static void main(String[] args) { //지금 저 퍼블릭 뭐시기 쓸줄 알아야함 시험에 점수주기용으로 나올수도 있음
        Scanner sc = new Scanner(System.in); // 키보드로 입력하는 방식 입력을 받음 그래서 system.in을 씀 / scanner 열기(생성)

        String name = sc.nextLine();//다른 언어의 엔터를 누를떄까지에 과정 쟤는 문자열 암기해야함
        // 엔터 입력까지의 문자열을 입력.

        System.out.println(name); // 기본적인 시스템의 출력은 모니터 저건 그럼 출력을 하는 명령

        int score = Integer.parseInt(sc.nextLine()); //parsint는 문자열을 기반으로 정수형을 배출함 저렇게 해서 int 자료형에 넣음
        // Integer.parseInt(문자열)
        if (score >= 90) {
            System.out.println("합격 : 우수");
        } else if (score >= 80) {
            System.out.println("합격");
        } else {
            System.out.println("불합격");
        }

        int rank = Integer.parseInt(sc.nextLine());

        String medal;
        switch (rank) {
            case 1:
                medal = "금";
                break;
            case 2:
                medal = "은";
                break;
            case 3:
                medal = "동";
                break;
            default: //else
                medal = "참가상";
                System.out.println("순위밖"); //default 에는 브레이크가 굳이 팔요없긴함
                break;
        }
        System.out.println(medal);
        //switch 표현식 p.104
        //기본형태 : medal = switch (){};
        medal = switch (rank) {
            case 1 -> "금";
            case 2 -> "은";
            case 3 -> "동";
            default -> {
                System.out.println("순위 밖");
                yield "참가상"; //여러 문장중에 값하나를 반환할때 사용 yield ) 만약 시험에 문법이 나오면 저 스위치 표현식을 나옴
                // 순수하게 값만 지정하면 스위치표현식이 좋고 아니면 나중에 추가적인것을 반환해야하면 그냥 스위치문이 좋음
            } // switch case 표현문은 무조건 디폴트가 있어야함
        };


        // 명확한 횟수를 통해 반복 : for문 추천
        //  불분연한 횟수를 통해 반복 : whlie문 추천

        // c언어 식의 배열 String student[3];

        String[] students = new String[3]; // 대괄호의 위치가 c랑 다름 배열은 정적크기를 가짐 큰 특징은 고정력
        for (int i = 0; i < students.length; i++) {
            students[i] = sc.nextLine();
        }

        for (int i = 0; i < students.length; i++) {
            System.out.println(students[i]);
        }
        // 향상된 for문 ==  foreach
        //처음부터 끝까지 접근한다
        //인덱스 제어 불가 0부터 N-1까지 뽑아줌
        for (var stu : students) { //var 가변형 자료형을 씀
            System.out.println(stu);
        }

        int energy = Integer.parseInt(sc.nextLine());

        // while:시작전 조건부터 따짐
        while (energy > 0) {
            System.out.println("에너지 :" + energy);
            energy--;
        }
        // 일단 무조건 한번 실행 , 주로 CUI에서 사용
        do {
            System.out.println("에너지" + energy);
            energy--;
        } while (energy > 0);


        sc.close(); //스캐너를 다 썻으니 이제 / 닫음 scanner 닫기(해제)

    }
}

