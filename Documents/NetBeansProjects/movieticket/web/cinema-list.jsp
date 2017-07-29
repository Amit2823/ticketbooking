
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Movie Ticket Booking | Movies & Events</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- Bootstrap stylesheet -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="all" />
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js'></script>
<script src='js/jquery.color-RGBa-patch.js'></script>
<script src='js/example.js'></script>
<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/jquery.min.js"></script> <!-- (do not call twice) -->
<script src="js/lightbox.js"></script>
<script>
  jQuery(document).ready(function($) {
      $('a').smoothScroll({
        speed: 1000,
        easing: 'easeInOutCubic'
      });

      $('.showOlderChanges').on('click', function(e){
        $('.changelog .old').slideDown('slow');
        $(this).fadeOut();
        e.preventDefault();
      })
  });

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-2196019-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body>
<div class="header">
	 <%@ include file ="include/header.jsp" %>
</div>


<div class="content">
    
      <%   Class.forName("oracle.jdbc.driver.OracleDriver");  
                       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
                       PreparedStatement stmt=con.prepareStatement("select  * from theater");  
                       ResultSet rs=stmt.executeQuery(); 
                       while(rs.next())
                       {
                           %>
                     
	<div class="wrap">
            <div class="cinema_list">
                <div class="row">
                    <div class="col-md-4">
                        <div class="c_name">
                            <p><%=rs.getString(2)%> ,<%=rs.getString(3)%></p>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="time"> 
                            <a href="seat-booking.jsp?slot=1&theaterid=<%=rs.getString(1)%>"> 09:00 AM</a>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="time"> 
                            <a href="seat-booking.jsp?slot=2&theaterid=<%=rs.getString(1)%>"> 12:00 AM</a>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="time"> 
                            <a href="seat-booking.jsp?slot=3&theaterid=<%=rs.getString(1)%>"> 03:00 PM</a>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="time"> 
                            <a href="seat-booking.jsp?slot=4&theaterid=<%=rs.getString(1)%>"> 06:00 PM</a>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="time"> 
                            <a href="seat-booking.jsp?slot=5&theaterid=<%=rs.getString(1)%>"> 09:00 PM</a>
                        </div>
                    </div>
                   
                </div>
            </div>
            
           
		
	</div>
                        <%}%>
	<div class="clear"></div>		
</div>
 <%@ include file ="include/footer.jsp" %>
</body>
</html>

