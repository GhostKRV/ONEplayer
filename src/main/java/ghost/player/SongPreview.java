package ghost.player;

import kong.unirest.HttpResponse;
import kong.unirest.JsonNode;
import kong.unirest.Unirest;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

public class SongPreview {

    public static void main(String ... argv){
        SongPreview songPreview = new SongPreview();
        String str;
        str = songPreview.getSongPreview("RSAC x ELLA — NBA (");
    }

    private static String encodeValue(String value) {
        try {
            return URLEncoder.encode(value, StandardCharsets.UTF_8.toString());
        } catch (UnsupportedEncodingException ex) {
            throw new RuntimeException(ex.getCause());
        }
    }


    public String getSongPreview(String name) {
        String encodeName = encodeValue(name);

        HttpResponse<JsonNode> response1 = Unirest.get("https://deezerdevs-deezer.p.rapidapi.com/search?q=" + encodeName)
                .header("x-rapidapi-host", "deezerdevs-deezer.p.rapidapi.com")
                .header("x-rapidapi-key", "733c8af9a6mshedc90338f8cf1adp173524jsn8a970d7320d6")
                .asJson();

        String str1 = response1.getBody().toString();
        //pw.write("<H1>" + response1.getBody() + "</H1>");
        int begin = str1.indexOf("\"preview\":\"") + 11;
        if(begin < 11) return "";
        int end = str1.indexOf(".mp3") + 4;
        if(end < 4) return "";
        return str1.substring(begin, end);
    }
}
