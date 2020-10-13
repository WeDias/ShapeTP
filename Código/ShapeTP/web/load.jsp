<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatec.UserInterface"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShapeTP</title>
        <link rel="shortcut icon" type="image/x-icon" href="img/ico.png">
    </head>
    <body>
        <%
            ArrayList<String> tLst = new ArrayList<>();
            ArrayList<String> sLst = new ArrayList<>();
            
            for (String key : request.getParameterMap().keySet()){ 
                sLst.add(request.getParameter(key));
                tLst.add(key); 
            }
            
            String t = ""; String s = "";
            String tCol = String.join(", ", tLst);
            String sCol = String.join(", ", sLst);
            
            s = session.getAttribute("s").toString();
            t = session.getAttribute("t").toString();
           
            UserInterface.insert(t, tCol, sCol, s);
            
            response.sendRedirect("http://localhost:8080/ShapeTP");
        %>
        <h1>Sucesso!</h1>
    </body>
</html>
