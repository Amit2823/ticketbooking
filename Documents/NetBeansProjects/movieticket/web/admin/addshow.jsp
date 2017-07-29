

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String showdate=request.getParameter("showdate");
     
           int showtime=Integer.parseInt(request.getParameter("showtime"));
             int theaterid=Integer.parseInt(request.getParameter("theaterid"));
                  int movieid=Integer.parseInt(request.getParameter("movieid"));
        
                try{  
                    // String image=filePart.getName();
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
Connection con25=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
  
PreparedStatement stmt25=con25.prepareStatement("insert into schedule values(?,?,?,?,?)");  
stmt25.setInt(1,0);//1 specifies the first parameter in the query  
stmt25.setString(2,showdate);  
stmt25.setInt(3,showtime); 
stmt25.setInt(4,movieid);
stmt25.setInt(5,theaterid);

int i=stmt25.executeUpdate();  
%>
<script>
alert("Movie successfully added");

</script>
<%@ include file="shows.jsp" %>  
<%
con25.close();  
  
}catch(Exception e){ System.out.println(e);}  
  
            
       
       
       
       %>
    </body>
</html>
