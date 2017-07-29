
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
	<div class="wrap">
		<div class="content-top">
			<h3>Movies</h3>
                        
                              <%   Class.forName("oracle.jdbc.driver.OracleDriver");  
                       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
                       PreparedStatement stmt=con.prepareStatement("select  * from film");  
                       ResultSet rs=stmt.executeQuery(); 
                       while(rs.next())
                       {
  %>
				<div class="col_1_of_4 span_1_of_4">
					<div class="imageRow">
						  	<div class="single">
						  		<a href="admin/images/movies/<%=rs.getString(3)%>" rel="lightbox"><img src="admin/images/movies/<%=rs.getString(3)%>" height='170' width="250"alt="" /></a>
						  	</div>
						  	<div class="movie-text">
						  		<h4 class="h-text"><a href="#"><%=rs.getString(2)%></a></h4>
						  		<p class="h-para"><%=rs.getString(5)%> </p>
						  		<a href="cinema-list.jsp" class="btn btn-primary">Book Now</a>
						  	</div>
		  				</div>
		  		</div>
                                                                 <%   }
                                        con.close();
                                        %>
				<div class="col_1_of_4 span_1_of_4">
					<div class="imageRow">
						  	<div class="single">
						  		<a href="images/t-pic19.jpg" rel="lightbox"><img src="images/pic19.jpg" alt="" /></a>
						  	</div>
						  	<div class="movie-text">
						  		<h4 class="h-text"><a href="#">Lorem ipsum dolor sit,</a></h4>
						  		<p class="h-para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit </p>
						  	</div>
		  				</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="imageRow">
						  	<div class="single">
						  		<a href="images/t-pic20.jpg" rel="lightbox"><img src="images/pic20.jpg" alt="" /></a>
						  	</div>
						  	<div class="movie-text">
						  		<h4 class="h-text"><a href="#">Lorem ipsum dolor sit,</a></h4>
						  		<p class="h-para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit </p>
						  	</div>
		  				</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="imageRow">
						  	<div class="single">
						  		<a href="images/t-pic21.jpg" rel="lightbox"><img src="images/pic21.jpg" alt="" /></a>
						  	</div>
						  	<div class="movie-text">
						  		<h4 class="h-text"><a href="#">Lorem ipsum dolor sit,</a></h4>
						  		<p class="h-para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit </p>
						  	</div>
		  				</div>
				</div>
					<div class="clear"></div>	
			</div>
			<div class="movie-top">
				<div class="col_1_of_4 span_1_of_4">
					<div class="imageRow">
						  	<div class="single">
						  		<a href="images/t-pic22.jpg" rel="lightbox"><img src="images/pic22.jpg" alt="" /></a>
						  	</div>
						  	<div class="movie-text">
						  		<h4 class="h-text"><a href="#">Lorem ipsum dolor sit,</a></h4>
						  		<p class="h-para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit </p>
						  		
						  	</div>
		  				</div>
		  		</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="imageRow">
						  	<div class="single">
						  		<a href="images/t-pic23.jpg" rel="lightbox"><img src="images/pic23.jpg" alt="" /></a>
						  	</div>
						  	<div class="movie-text">
						  		<h4 class="h-text"><a href="#">Lorem ipsum dolor sit,</a></h4>
						  		<p class="h-para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit </p>
						  	</div>
		  				</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="imageRow">
						  	<div class="single">
						  		<a href="images/t-pic24.jpg" rel="lightbox"><img src="images/pic24.jpg" alt="" /></a>
						  	</div>
						  	<div class="movie-text">
						  		<h4 class="h-text"><a href="#">Lorem ipsum dolor sit,</a></h4>
						  		<p class="h-para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit </p>
						  	</div>
		  				</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="imageRow">
						  	<div class="single">
						  		<a href="images/t-pic25.jpg" rel="lightbox"><img src="images/pic25.jpg" alt="" /></a>
						  	</div>
						  	<div class="movie-text">
						  		<h4 class="h-text"><a href="#">Lorem ipsum dolor sit,</a></h4>
						  		<p class="h-para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit </p>
						  	</div>
		  				</div>
				</div>
					<div class="clear"></div>	
			</div>
			</div>
				<div class="clear"></div>		
			</div>
 <%@ include file ="include/footer.jsp" %>
</body>
</html>
