<%-- 
    Document   : sayhello
    Created on : 10/17/2022, 15:09:20
    Author     : wdomingues@id.uff.br
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SayHello.jsp</title>
    </head>
    <header>
        <h1>Aplicativo HelloWorld</h1>
        <h6><jsp:getProperty name="myBean" property="msg2"/> <jsp:getProperty name="myBean" property="aut"/></h6>
    </header>
    <body>
        <jsp:useBean id="myBean" class="hello.MessageBean"/>
        <% String lang = request.getParameter("lang"); %>
        <h4><jsp:getProperty name="myBean" property="weekDayMsg"/> <jsp:getProperty name="myBean" property="weekDay"/>.</h4>
        <jsp:setProperty name="myBean" property="lang" value="<%=lang%>"/>
        <h2><jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("nome")%>!</h2>
    </body>
    <footer>
        <jsp:getProperty name="myBean" property="footerMsg"/>
    </footer>
</html>
