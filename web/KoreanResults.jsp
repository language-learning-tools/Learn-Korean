<%-- 
    Document   : KoreanResults
    Created on : 05.02.2026, 13:32:01
    Author     : Schatzsuche
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learn Korean</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <%
            String[] Korean = (String[]) session.getAttribute("Korean");
            String[] KoreanRomanized = (String[]) session.getAttribute("KoreanRomanized");
            int zahl = (int) session.getAttribute("zahl");

            String KoreanInput = request.getParameter("KoreanRomanized");
            String test = KoreanRomanized[zahl];
            String Ergebnis = "";
            if (KoreanInput.equals(test)) {
                Ergebnis = "True";
            } else {
                Ergebnis = "False";
            }
        %>
        <section>

            <h1><span style="color: #0047A0;"><%= KoreanInput%></span> is <%= Ergebnis%></h1>
            <br>
            <h2> It was <span style="color: #CD2E3A;"><%= test%></span></h2>
            <a href="Korean.jsp"><button id="idk" >back</button></a>
        </section>
    </body>
</html>>