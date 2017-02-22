<%--
    Document   : mysql_connector
    Created on : Jan 2, 2017, 3:31:07 PM
    Author     : Kassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
        try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/test","root","abcdefgh");
//here sonoo is database name, root is username and password
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from emp");
while(rs.next())  %>
System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));
<% con.close();
}catch(Exception e){ System.out.println(e);}  %>
    </body>
</html>
