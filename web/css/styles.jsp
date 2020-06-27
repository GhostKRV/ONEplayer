<%@ page contentType="text/css;charset=utf-8" language="java" %>

*{
    margin: 0;
    padding: 0;
}

body{background-color: #a2a2a2;
}

table{

    width: 80%;
    height: 40px;
    margin: 0 auto;
    border-spacing: 0 3px;
}

tr{height: 45px;
    margin: 20px;
    background-color: #b2b2b2;
}

td.audio {
    width: 108px;
}
td.audio div{
    align-self: center;
}

td.time{
    width: 100px;
    text-align: center;
}

button{
    height:18px;
    width:18px;
    border: hidden;
    background: none;
    margin: 3px;
    outline: none;
}
button.play{
    background-image:url('../icons/play-button.png');
    background-size: contain;
    background-repeat:no-repeat;
}
button.pause{
    background-image:url('../icons/pause.png');
    background-size: contain;
    background-repeat:no-repeat;
}
button.volUp{
    background-image:url('../icons/add.png');
    background-size: contain;
    background-repeat:no-repeat;
}
button.volDown{
    background-image:url('../icons/remove.png');
    background-size: contain;
    background-repeat:no-repeat;
}

p{
    line-height: 0px;
    font-size: 12pt;
    text-decoration: none;
    font-family: Segoe UI,Helvetica,Arial,sans-serif;
    color: #26292a;
    text-transform: uppercase;
}

a{
    border-left-color: #3c3c3c;
    border-left-style: solid;
    border-left-width: 7px;
    padding-left:20px;
    display:block;
    font-size: 12pt;
    text-decoration: none;
    font-family: Segoe UI,Helvetica,Arial,sans-serif;
    line-height:45px;
    color: #26292a;
    text-transform: uppercase;
}

th{
    background-color: #26292a;
}

.title{
    font-family: Segoe UI,Helvetica,Arial,sans-serif;
    color: #c3c3c3;
}

a:visited {
    border-left-color: #19d237;
    border-left-style: solid;
    border-left-width: 7px;
}
a:hover {
    border-left-color: #ebc823;
    border-left-style: solid;
    border-left-width: 7px;
}
H1{
    font-family: Segoe UI Light, Segoe UI,Helvetica,Arial,sans-serif;
    color: #26292a;
    text-align: center;
    margin: 12px;
}

.nomusic{
    border-left-color: #b01818;
    border-left-style: solid;
    border-left-width: 7px;
}

.likem{
    color: #cbbd1e;
    background-color: #ebc823;
    font-weight: bold;
}