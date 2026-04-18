package arr;

import java.security.PrivateKey;

public class Book {
    private String name;
    private String  auther;

    public Book(String name, String auther){
        this.name = name;
        this.auther = auther;
    }

    public void setName(String name){
        this.name = name;

    }
    public void setAuther(String auther){
        this.auther = auther;
    }

    public String getName(){
        return name;
    }

    public String getAuther(){
        return auther;
    }

    public String getInfo(){
        return name + ":" + auther;
    }
}
