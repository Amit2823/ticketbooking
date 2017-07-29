
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
   String name;
   int id;
             String email=request.getParameter("email");
                String password=request.getParameter("pwd");
                try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
  
PreparedStatement stmt=con.prepareStatement("select * from cinema_user where email=? and password=?");  

stmt.setString(1,email);
stmt.setString(2,password);
ResultSet rs=stmt.executeQuery(); 
if(rs.next())
{
     id=rs.getInt(1);
   name=rs.getString(2);
  session.setAttribute("name",name);
    session.setAttribute("id",id);
  response.sendRedirect("cinema-list.jsp");
}
else
{
%>
<script>
alert("You are not registered. For Login you need to register yourself first.");

</script>
<%@ include file="register.jsp" %>  
<%
  }  
con.close();  
  
}catch(Exception e){ System.out.println(e);}  
  
            
       
       
       
       %>
    </body>
</html>
