
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Movie Ticket Booking </title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Movie Ticket Booking Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Kotta+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="css/style_1.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery.seat-charts.js"></script>
 <script type="text/javascript">
 function msg() {
    <% 
       
        int slot1=Integer.parseInt(request.getParameter("slot")); 
      int theaterid1=Integer.parseInt(request.getParameter("theaterid"));
      %>
          //    alert("hi");
            var custid=document.myform.custid.value;
    var filmid=document.myform.filmid.value;
   var showdate=document.myform.showdate.value;
   var slot=document.myform.slot.value;
    var noofseat = document.getElementById('counter').innerHTML;
   var selectedseats = document.getElementById('selected-seats').innerHTML;  
   var total =document.getElementById('total').innerHTML; 
  selectedseats=selectedseats.replace(/"/g,"'");
  
window.location="http://localhost:8080/movieticket/booking-process.jsp?id="+custid+"&theaterid="+<%=theaterid1%>+"&selectseats="+selectedseats+"&noseat="+noofseat+"&total="+total+"&showdate="+showdate+"&slot="+slot+"&filmid="+filmid;
   
}  

    </script>

</head>
<body>
    <%
//String name=(String)session.getAttribute("name");
if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
{
    %>
   <script>
alert("You are not login.For booking you need to login yourself first.");

</script>
<%@ include file="register.jsp" %> 
    <%
}
else
{
    int filmid=0;
 int custid=(Integer)session.getAttribute("id");
    String time="";
    String filmname="";
  int slot=Integer.parseInt(request.getParameter("slot")); 
  int theaterid=Integer.parseInt(request.getParameter("theaterid"));
if(slot==1)
{
time="9:00AM";
}
else if(slot==2)
{
  time="12:00AM";  
}
else if(slot==3)
{
  time="3:00PM";  
}
else if(slot==4)
{
  time="6:00PM";  
}
else if(slot==5)
{
  time="9:00PM";  
}
java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy");
Class.forName("oracle.jdbc.driver.OracleDriver");  
                       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
                      PreparedStatement stmt=con.prepareStatement("select * from theater where id=?");  
                 stmt.setInt(1,theaterid);
                       ResultSet rs=stmt.executeQuery(); 
                          PreparedStatement stmt1=con.prepareStatement("select * from film where id in(select filmid from schedule where theaterid=? and showtimeslot=?)");  
                 stmt1.setInt(1,theaterid);
                  stmt1.setInt(2,slot);
                       ResultSet rs1=stmt1.executeQuery(); 
                    while(rs1.next())
                    {  filmid=rs1.getInt(1);
                       filmname=rs1.getString(2);
                    }
                       while(rs.next())
                   {    
%>
	
<div class="content">

	<div class="main">
		<h2><%=rs.getString(2)%> Showing Screen 1</h2>
		<div class="demo">
			<div id="seat-map">
				<div class="front">SCREEN</div>					
			</div>
			<div class="booking-details">
				<ul class="book-left">
					<li>Movie </li>
					<li>Time </li>
                                        <li>Show Time </li>
					<li>Tickets</li>
					<li>Price</li>
					<li>Seats :</li>
				</ul>
				<form method="post" name="myform" action="#">
                                <ul class="book-right">
                                    <input type="hidden" name="custid" value="<%=custid%>" />
					<li>: <input type="hidden" name="filmid" value="<%=filmid%>" /><%=filmname%></li>
					<li>:<input type="text" name="showdate" value="<%= df.format(new java.util.Date()) %>" size="15"readonly/> 
                                            <li>:<input type="hidden" name="slot" value="<%=slot %>" /><%=time %>
					<li>: <span id="counter">0</span></li>
                                      
                                        <li>: <b><i>$</i><span id="total"></span></b></li>
                                       
                                </ul>
                                      
				<div class="clear"></div>
				<ul id="selected-seats" class="scrollbar scrollbar1"></ul>
			   
						
				<button class="checkout-button" type="button" onclick="msg();">Book Now</button>	
                                  </form>
				<div id="legend"></div>
			</div>
			<div style="clear:both"></div>
	    </div>

			<script type="text/javascript">
				var price = <%=rs.getInt(6)%>; //price
				$(document).ready(function() {
					var $cart = $('#selected-seats'), //Sitting Area
					$counter = $('#counter'), //Votes
					$total = $('#total'); //Total money
					
					var sc = $('#seat-map').seatCharts({
						map: [  //Seating chart
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'__________',
							'aaaaaaaa__',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'__aaaaaa__'
						],
						naming : {
							top : false,
							getLabel : function (character, row, column) {
								return column;
							}
						},
						legend : { //Definition legend
							node : $('#legend'),
							items : [
								[ 'a', 'available',   'Available' ],
								[ 'a', 'unavailable', 'Sold'],
								[ 'a', 'selected', 'Selected']
							]					
						},
						click: function () { //Click event
							if (this.status() == 'available') { //optional seat
								$('<li>Row'+(this.settings.row+1)+' Seat'+this.settings.label+'</li>')
									.attr('id', 'cart-item-'+this.settings.id)
									.data('seatId', this.settings.id)
									.appendTo($cart);

								$counter.text(sc.find('selected').length+1);
								$total.text(recalculateTotal(sc)+price);
											
								return 'selected';
							} else if (this.status() == 'selected') { //Checked
									//Update Number
									$counter.text(sc.find('selected').length-1);
									//update totalnum
									$total.text(recalculateTotal(sc)-price);
										
									//Delete reservation
									$('#cart-item-'+this.settings.id).remove();
									//optional
									return 'available';
							} else if (this.status() == 'unavailable') { //sold
								return 'unavailable';
							} else {
								return this.style();
							}
                                                        
           
						}
					});
	<%				//sold seat
            
           Class.forName("oracle.jdbc.driver.OracleDriver");  
                       Connection con12=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
                      PreparedStatement stmt12=con12.prepareStatement("select * from ticket where timeslot=? and theaterid=? and solddate=? ");  
                                stmt12.setInt(1,slot);
                                       stmt12.setInt(2,theaterid);     
                                        stmt12.setString(3, df.format(new java.util.Date()));
                                          ResultSet rs12=stmt12.executeQuery(); 
                                  String s1="";
                                          while(rs12.next())
                                    {
                                       
                                        String segments[] = rs12.getString(4).split("cart-item-");
                                        for(int i=0;i<segments.length;i++)
                                        {
	                               s1=s1+"'"+segments[i].substring(0,3)+"',";
                                         }
                                    }
                                          
                                          con12.close();
          %>                        
                  sc.get([<%=s1%>]).status('unavailable');
                  
				sc.get(['1_2', '4_4','4_5','6_6','6_7','8_5','8_6','8_7','8_8', '10_1', '10_2']).status('unavailable');
					
        
        
        
				});
				//sum total money
				function recalculateTotal(sc) {
					var total = 0;
					sc.find('selected').each(function () {
						total += price;
					});
							
					return total;
				}
			</script>
	</div>
	<p class="copy_rights">&copy; 2017 Movie Ticket Booking  All Rights Reserved</p>
</div>
                                <%}%>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<%}%>
  
</body>
</html>
