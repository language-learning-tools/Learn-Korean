<%-- 
    Document   : Korean
    Created on : 05.02.2026, 13:22:41
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learn Korean</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="icon" href="assets/logo.ico" type="image/x-icon">
    </head>
    <body>

        <%
            Random rand = new Random();
            int zahl = rand.nextInt(23);
            String[] Korean = {
                "ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ", "ㅂ", "ㅅ",
                "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ",
                "ㅏ", "ㅑ", "ㅓ", "ㅕ", "ㅗ",
                "ㅛ", "ㅜ", "ㅠ", "ㅡ", "ㅣ"
            };

            String[] KoreanRomanized = {
                // Consonants (14)
                "g", "n", "d", "r/l", "m", "b", "s",
                "ng", "j", "ch", "k", "t", "p", "h",
                // Vowels (10)
                "a", "ya", "eo", "yeo", "o",
                "yo", "u", "yu", "eu", "i"
            };

            session.setAttribute("Korean", Korean);
            session.setAttribute("KoreanRomanized", KoreanRomanized);
            session.setAttribute("zahl", zahl);

        %>
        <h1>Hello World!</h1>
        <section>

            <h1><%= Korean[zahl]%></h1>
            <form action="KoreanResults.jsp" method="get">
                <input type="text" name="KoreanRomanized" autocomplete="off" required >
                <input type="submit" value="submit">
            </form>
            <br>

            <a href="index.html"><button id="idk">back</button></a>
            <br>
            <br>
            <br>


        </section>
    </body>
</html>