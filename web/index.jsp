<%--
  Created by IntelliJ IDEA.
  User: andre
  Date: 20.06.2020
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ghost.player.Song" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.gson.reflect.TypeToken" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="ghost.player.SongPreview" %>


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/styles.jsp" media="all">
    <title>ONE PLAYER</title>
  <meta charset=utf-8">
  <script>
      function changeColor(playerid) {
          var elem = document.getElementById(playerid).parentNode.parentNode;
          elem.style.background = "#b522c7";
          elem.style.fontWeight = "bold";
      }
      function defaultColor(playerid) {
          var elem = document.getElementById(playerid).parentNode.parentNode;
          elem.style.background = "";
          elem.style.fontWeight = "";
      }
      function defaultColor() {
          var blocks = document.getElementsByTagName("audio");
          for(j = 0; j<blocks.length; j++){
              blocks[j].parentNode.parentNode.style.background = "";
              blocks[j].parentNode.parentNode.style.fontWeight = "";
          }
      }
      function allPause() {
          var sounds = document.getElementsByTagName("audio");
          for(i = 0; i<sounds.length; i++) {
              sounds[i].pause();
          }
          defaultColor();
      }
  </script>

</head>
<body>
<H1>ONE player</H1>
<table>
  <tr>
      <th class="name"><p class="title">Название трека, автор, альбом</p></th>
      <th class="audio"><p class="title">Превью</p></th>
      <th class="time"><p class="title">Время</p></th>
  </tr>
  <tr class="likem">
      <td class="name"><a href="https://www.youtube.com/results?search_query=Crooked MARUV">Crooked MARUV </a></td>
      <%SongPreview songPreview = new SongPreview();
      out.write("<td class=\"audio\"><audio id=\"player000\" src=\"" + songPreview.getSongPreview("Crooked MARUV") + "\"></audio>");%>
      <div>
          <button class="play" onclick="allPause(); changeColor('player000'); document.getElementById('player000').play()" )></button>
          <button class="pause" onclick="document.getElementById('player000').pause()"></button>
          <button class="volUp" onclick="document.getElementById('player000').volume += 0.1"></button>
          <button class="volDown" onclick="document.getElementById('player000').volume -= 0.1"></button>
      </div></td>
      <td class="time"><p>3:27</p></td>
  </tr>

    <%
    String jspPath = session.getServletContext().getRealPath("/");
    String txtFilePath = jspPath+ "/songs.json";
    Gson gson = new Gson();
    ArrayList<Song> list = gson.fromJson(new InputStreamReader(new FileInputStream(txtFilePath), "utf-8"), new TypeToken<List<Song>>() {
    }.getType()); //При чтении указывай кодировку!!!


    int i=1;
    for(Song song: list){
        String link = songPreview.getSongPreview(song.getName());

        out.write("<tr>");
        if(link.equals("")){
            out.write("<td class=\"name\"><a class=\"nomusic\" href=\"" + song.getURL() + "\">" + song.getName() + "</a></td>\n");
            out.write("<td class=\"audioNope\"></td>");
        }
        else{
            out.write("<td class=\"name\"><a href=\"" + song.getURL() + "\">" + song.getName() + "</a></td>\n");
            out.write("<td class=\"audio\"><audio id=player" + i + " src=\"" + link + "\"></audio>");
            out.write("<div>");
            out.write("	    <button class=\"play\" onclick=\"allPause(); changeColor('player" + i + "'); document.getElementById('player" + i + "').play()\" )></button>");
            out.write("	    <button class=\"pause\" onclick=\"document.getElementById('player" + i + "').pause()\"></button>");
            out.write("	    <button class=\"volUp\" onclick=\"document.getElementById('player" + i + "').volume += 0.1\"></button>");
            out.write("		<button class=\"volDown\" onclick=\"document.getElementById('player" + i + "').volume -= 0.1\"></button>");
            out.write("</div>");
            out.write("</td>");
        }
        out.write("<td class=\"time\"><p>" + song.getTime() + "</p></td>");
        out.write("</tr>");
        i++;
    }


  %>
</table>

</body>
</html>