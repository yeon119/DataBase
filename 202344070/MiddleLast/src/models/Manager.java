package models;

import models.Student;

public class Manager {
    public static void main(String[] args) {
        Student[] s = new Student[2];
        s[0] = new Student("1", "kim");
        s[1] = new Student("2", "park");

        s[0].addSubject("java",100);
        s[0].addSubject("ds",100);

        s[1].addSubject("java",95);
        s[1].addSubject('ds',80);

        s[1].addSubject('ai',70);

        for(var stu : s){
            System.out.println(stu.getInfo());
        }
    }
}
