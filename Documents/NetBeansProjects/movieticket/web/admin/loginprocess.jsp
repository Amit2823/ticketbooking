<%

String email=request.getParameter("email");
String password=request.getParameter("password");
if(email.equals("admin") && password.equals("admin"))
{
     response.sendRedirect("profile.jsp");
}
else
{
%>    
    <script>
        alert("Please Enter The Correct value.");
        </script>
<jsp:include page="index.jsp" />
  <%  
}

%>