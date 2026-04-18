package models;

import java.util.ArrayList;

public class Student {
    private String id; //초기값 null
    private String name; //초기값 null
    private ArrayList<Subject> subjectList;

    public String getId(){
        return id;
    }
    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name = name;
    }
    public String getInfo() {
        return name + "," +
    }

    public void addSubject(){
        var subject = new Subject(name, score);

    }

    public String getInfo(){
        String  info;
        info = "학번" + id + ", 이름" + name + "\n";
        info = "[수강과목 목록]\n";
        for ()
    }

    public Student(String name , String id){

    }
}
