
<%@page import="com.cloudinary.utils.ObjectUtils"%>

<%@ page import="com.cloudinary.*" %>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
@MultipartConfig(fileSizeThreshold = 1024*1024*2, maxFileSize = 1024*1024*10,maxRequestSize = 1024*1024*50)
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String name=(String)session.getAttribute("name");
         // Part filePart = request.getPart("image");
          
          
     String saveFile="";
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File("C:/Users/AK-THAKUR/Documents/NetBeansProjects/movieticket/web/admin/images/movies/"+saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
/*
 Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap("cloud_name", "amyth","api_key", "773311612344215","api_secret", "0lbCh6Qtyrrr7y-1Zfl1n5gDUMA"));
File f = new File( "http://localhost:8084/movieticket/admin/images/movies/"+saveFile );
*/
//Map uploadResult = cloudinary.uploader().upload( f , ObjectUtils.emptyMap());
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
  PreparedStatement stmt=con.prepareStatement("update film set image=? where name=?");  
stmt.setString(1, ff.getName());//1 specifies the first parameter in the query i.e. name  
stmt.setString(2,name);  
  
int i=stmt.executeUpdate();  
//System.out.println(i+" records updated");  

%>
<script>
alert("Image successfully added");

</script>
<%
session.invalidate();
response.sendRedirect("movies.jsp");   
}
       %>
    </body>
</html>
