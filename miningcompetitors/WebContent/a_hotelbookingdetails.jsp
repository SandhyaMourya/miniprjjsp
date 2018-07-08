<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all hotels  list</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" href="Gallery/datamining.jpg"/>

<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />

<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style9 {
	font-size: 30px;
	color: #FF6600;
}
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style13 {color: #FFF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo"></div>
      <div class="menu_nav">
	  <%String admin=(String)application.getAttribute("admin"); %>
        <ul>
          <li><a href="adminmain.jsp"><span>Home </span></a></li>
          <!--  <li><a href="#"><span><%=admin%></span></a></li> -->
          <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
          <li></li>
          <li></li>
        </ul>
      </div>
      
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big><br />
         </span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big><br />
        </span></a> </div>
        <div class="clr"></div>
      </div>
     
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <h3 align="center" class="style9"> Hotels Booking Details </h3>
          
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
          <%@ include file="connect.jsp" %>
          <%
          String query1="SELECT * FROM hotelbookings;"; 
      	Statement st1=connection.createStatement();
      	ResultSet rs1=st1.executeQuery(query1);
      	//out.println("out=>"+rs1.next());
      	 if(rs1.next()) 
      	 {
          %>
            <table width="831" border="2" align="left"  cellpadding="0" cellspacing="0" >
            <tr>
              <th height="40" bgcolor="#33cc33"><span class="style13"> Username </span></th>
              <th bgcolor="#33cc33"><span class="style13">Account Number</span></th>
			  <th bgcolor="#33cc33"><span class="style13">Hotel Name</span></th>
			  <th bgcolor="#33cc33"><span class="style13">Number of Rooms Booked</span></th>
              <th bgcolor="#33cc33"><span class="style13">Room Rent</span></th>
			  <th bgcolor="#33cc33"><span class="style13">Total Booking Cost</span></th>
			  <th bgcolor="#33cc33"><span class="style13">Booked date</span></th>
            </tr>
            
            
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="SELECT * FROM hotelbookings;"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		s1=rs.getString(2);//username
		s2=rs.getString(3);//accno
		s3=rs.getString(4);//h_id
		s4=rs.getString(5);//hname
		s5=rs.getString(6);//no of rooms booked
		s6=rs.getString(7);//rent
		s7=rs.getString(8);//total bill
		s8=rs.getString(9);//dt
	
			%>
            <tr>
              <td  width="81" height="33" align="center" valign="middle" ><span class="style5">
               <a href="a_userdetails1.jsp?uname=<%=s1%>"> <%out.println(s1);%></a></span></td>
              <td  width="119" height="33" align="center" valign="middle"><span class="style5">
                <% out.println(s2); %></span></td>
			  <td  width="115" height="33" align="center" valign="middle"><span class="style5">
			   <a href="a_hoteldetails1.jsp?id=<%=s3%>&hname=<%=s4%>"> <%out.println(s4);%></a></span></td>
			 <td  width="154" height="33" align="center" valign="middle"><span class="style5">
			   <%out.println(s5);%></span></td>
			<td  width="81" height="33" align="center" valign="middle"><span class="style5">
			  <%out.println(s6);%></span></td>
			<td  width="113" height="33" align="center" valign="middle"><span class="style5">
			  <%out.println(s7);%></span></td>
			<td  width="150" height="33" align="center" valign="middle"><span class="style5">
			  <%out.println(s8);%></span></td>

              
	<%
		}
		connection.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
		//out.println(e.getMessage());
	}
					%>
      </table>
	
          <% } else {%>  	
          <% //if(!rs1.next()) %>
        	  <center><img src="Gallery/NoData.png" alt="No data Available" width="250dp"></img></center>
        	   <% } %>
        	   <p style="padding-left:100%;" class=""><a href="adminmain.jsp">Back</a> </p>
            </div>
           
          
          
        </div>
        
        </div>
        
        
        <div class="">
        <div class="gadget">
          <h2 class="star"><span></span> </h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp"></a></li>
            <li><a href="adminlogin.jsp"></a></li>
            <li></li>
          </ul>
        </div>
        
       <!-- <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <div class="clr"></div>
          <ul class="ex_menu"><li></li>
            <li></li>
          </ul>
        </div>
      </div> -->
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
  
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
      
    </div>
  </div>
</div>

</body>
</html>
