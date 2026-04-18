package reference;

public class Subject2 {
    private String name;
    private int score;

    public void setScore(int score) {
        if (score < 0) {
            this.score = 0;
        } else if (score > 100) {
            this.score = 100;
        } else {
            this.score = score;
        }
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public int getScore() {
        return score;
    }
    public void showInfo() {
        System.out.println(name + ":" + score);
    }
}
