package ghost.player;

public class Song {
    private String name;
    private String time;
    private String URL;

    public Song(String name, String time, String URL) {
        this.name = name;
        this.time = time;
        this.URL = URL;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }
}
