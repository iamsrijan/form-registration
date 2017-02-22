<%--
    Document   : reg
    Created on : Jan 2, 2017, 12:29:04 PM
    Author     : Kassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import= "javax.servlet.*" %>
<%@ page import= "java.io.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><H1>The Database Table </H1>
       <%
    
String nme=request.getParameter("nme");

String ege=request.getParameter("ege");
String sx=request.getParameter("sx");
String preadd=request.getParameter("preadd");
String peradd=request.getParameter("peradd");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
"root","abcdefgh");
Statement st= con.createStatement();
ResultSet rs;
st.executeUpdate("insert into table_ju(Name,Age,Sex,Present_Address,Permanent_Address) values ('"+nme+"','"+ege+"','"+sx+"','"+preadd+"','"+peradd+"')");



            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "abcdefgh");

            Statement statement = connection.createStatement() ;
            ResultSet resultset =
                statement.executeQuery("select ID,Name,Age,Sex,Present_Address,Permanent_Address from table_ju") ;
       
            %>


        <TABLE BORDER="1">
            <TR>
                <TH>ID</TH>
                <TH>Name</TH>
                <TH>Age</TH>
                <TH>Sex</TH>
                <TH>Present Address</TH>
                <TH>Permanent Address</TH>
                <TH>Make Changes</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></TD>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
                <TD> <a href="edit.jsp?id=<%= resultset.getString(1) %>">Edit</a>/<a href="delete.jsp?id=<%= resultset.getString(1) %>">Delete</a></TD>
            </TR>
            <% } %>
        </TABLE>
    </body>
</html>
