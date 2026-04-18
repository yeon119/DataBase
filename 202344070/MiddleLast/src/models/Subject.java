package models;

import java.util.SplittableRandom;

public class Subject {
    private String name;
    private  int score;

    public String getName(){
        return name;
    }

    public int getScore(){
        return score;   //
    }

    public void setName(String name){
        this.name  = name; // 미니멈값 맥시멈값
    }

    public void setScore(int score){
        this.score = score;
    }

    public String getInfo(){
        return "과목명"+name + ","+"점수" + score;
    }
    public Subject(String name, int score){
        this.name  = name;
        this.score = score;
    }
}
