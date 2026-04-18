package arr;

import java.util.ArrayList;

public class Start {
    public static void main(String[] args) {
        int[] s1 = new int[3]; // 배열은 만들어질때 무조건 길이가 있어야함
        int[] s2 = new int[]{1, 2, 3};
        int[] s3 = {1, 2, 3};

        s1[1] = 4; // 배열에 값 설정
        int temp = s1[2]; // 배열에서 값 가져오기

        //배열의 길이 가져오기
        int len = s1.length;
        for (int i = 0; i < len; i++) {
            System.out.println(s1[i]); //040이 출력됨
        }
        len = s1.length > s2.length ?
                s2.length : s1.length;
        System.arraycopy(s2, 0, s1, 0, len); // 어디서 복사할껀지 어디에서 가져올껀지 어디에다가 복사할껀지 어디에 둘껀지
        for (int s : s1) {
            System.out.println(s);
        }

        // arr[m][n] => arr[2][3]
        // arr은 몇개짜리 배열? 2
        //arr의 총 요소의 숫자? => 6

        int[][] arr = {{1, 2, 3}, {4, 5, 6}};
        for (int m = 0; m < arr.length; m++) {//2개
            for (int n = 0; n < arr[m].length; n++) { //3개
                System.out.print(arr[m][n] + "");
            }
        }
        System.out.println(); // 줄바꿈

        for (var d1 : arr) {//int [] int
            for (var d2 : d1) {// int d2
                System.out.println(d2 + "");
            }

        }

        Book[] books = new Book[2];
        books[1] = new Book("태백산맥", "조정래");
        for (var book : books) {
            System.out.println(book);  // null이 두개
            if (book != null) {
                System.out.println(book.getInfo());
            }

        }

        books[0] = new Book("향수", "쥐스킨트");
        Book[] books2 = new Book[books.length];

        //얕은 복사를 수행
        //인스턴스의 정보를 복사 x
        //인스턴스의 참조를 복사 o
        System.arraycopy(books,0,books2,0,books.length);

        books2[0].setName("삼체");
        books2[0].setAuther("류츠신");

        for(var book : books2){
            System.out.println(book.getName());


        }
        for(int i = 0; i < books.length; i++){
            var name = books[i].getName();
            var auth = books[i].getAuther();
            books2[i] = new Book(name, auth); //deep copy
        }

        books2[0].setName("장미의 이름");
        books2[0].setAuther("움베르트에코");

        for(int i = 0; i <2;i++ ){
            System.out.println(books[i].getName());
            System.out.println(books2[i].getName());
        }


        ArrayList<Book> list = new ArrayList<Book>();
        list.add(new Book("태","조"));
        list.add(new Book("향","파"));
        System.out.println(list.size());

        for(int i =0; i <list.size();i++){
            System.out.println(list.get(i).getName()); // 태 \n향

        }

        for(var book : list){
            System.out.println(book.getName());

        }
        list.remove(0);
        System.out.println(list.size());
    }
}
