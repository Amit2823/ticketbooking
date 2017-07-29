

<%@page import="java.sql.PreparedStatement"%>
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
       String name=request.getParameter("name");
          String contact=request.getParameter("contact");
             String email=request.getParameter("email");
                String password=request.getParameter("pwd");
                try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
  
PreparedStatement stmt=con.prepareStatement("insert into cinema_user values(?,?,?,?,?)");  
stmt.setInt(1,0);//1 specifies the first parameter in the query  
stmt.setString(2,name);  
 stmt.setString(3,contact);
stmt.setString(4,email);
stmt.setString(5,password);
int i=stmt.executeUpdate();  
%>
<script>
alert("You are successfully registered.");

</script>
<%@ include file="register.jsp" %>  
<%
    
con.close();  
  
}catch(Exception e){ System.out.println(e);}  
  
            
       
       
       
       %>
    </body>
</html>
