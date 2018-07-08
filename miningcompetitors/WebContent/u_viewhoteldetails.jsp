<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>view hotel details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width,initial-scale=1, user-scalable=no shrink-to-fit=no"/>
<link rel="icon" href="Gallery/datamining.jpg"/>

<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.button {
    background-color: #4CAF50;
    color: white;
    padding: 5px 18px;
    margin: 6px 0;
    border: none;
    cursor: pointer;
    width: 15%;
}
.submitRev{
 background-color: red;
    color: white;
    padding: 6px 18px;
    margin: 6px 0;
    border: none;
    cursor: pointer;
    width: -6%;
}

.button:hover {
    opacity: 0.8;
}

.tab1{border: 3px solid #f1f1f1;}
.style1{
	font-size:18px;
	color:black;
	margin-left:40px;
}
.style9 {
	font-size:20px;
	color: #FF6600;
}
.style11 {color: #006699}
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style13 {
	font-size: 16px;
	color: #006666;
}
.style14 {
	font-size: 14px;
	color: #006699;
}
.style15 {color: #009966}
.style16 {color: #0066CC}
.style17 {
	font-size: 14px;
	color: #009966;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">

      </div>
     
      
      <div class="menu_nav">
	  <%String user=(String)application.getAttribute("user"); %>
        <ul>
          <li><a href="usermain.jsp"><span>Home </span></a></li>
          <!--  <li><a href="#"><span><%=user%></span></a></li> -->
          <li><a href="userlogin.jsp"><span>Logout</span></a></li>
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
        <h3 align="left" class="style9">Hotel Details</h3>
          <div class="post_content">
				    <p align="justify">

<%@ include file="connect.jsp" %>
<%
String type=request.getParameter("type");
String id=request.getParameter("id");
String hname=request.getParameter("hname");
String key=request.getParameter("key");
String s1,s2,s3,s5,s6="",s7,s8,s9,s10;
int i=0,j=0,m=0,s4=0;
		
	try	
	{
				String sql4="select area,location from hotels where id='"+id+"'";
				
				Statement st4=connection.createStatement();
				ResultSet rs4=st4.executeQuery(sql4);
				if(rs4.next());
				{
					String area1=rs4.getString(1);
					String city=rs4.getString(2);
				
				String sql1="select * from roomdetails where hotel_id='"+id+"' ";
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(sql1);
				if(rs1==null)
				{
					out.println("No roomdeatils available");
				}
				else if(rs1.next());
				{
					j=rs1.getInt(1);
					s1=rs1.getString(3);//rooms
					s2=rs1.getString(4);//price
					s3=rs1.getString(5);//phone
					s4=rs1.getInt(8);//available
				%>
				<table>
					<tr>
					<th height="46" colspan="2"><div align="left"><span class="style13"><%=hname%>,<%=area1%>.</span></div></th>
					</tr>
				</table>
		   		<table  class="tab1" >
					
				<tr>
					<td height="50" colspan="2"><img src="profile_pic.jsp?id=<%=j%>&type=<%="room"%>" width="150px" height="100px" align="left"/></td>
					
					<td>
					 <table>
						 <tr>
							<th width="204"><div align="left" class="style11">Total Rooms : </div></th>
							<td width="291"><%=s1%></td>
						</tr>
						<tr>
						
							<th width="204"><div align="left" class="style11">Rooms Available : </div></th>
							<td width="291"><%=s4%></td>
						</tr>
						<tr>
							<th><div align="left" class="style11">Room Rent : </div></th>
							<td><%=s2%></td>
						</tr>
						<tr>
						
							<th><div align="left" class="style11">Contact Number : </div></th>
							<td><%=s3%></td>
						</tr>
					</table>
			</table>
					
					
					  <%
				}
				}
				%> 
							   
			 </br>
									
			<form action="u_viewhoteldetails.jsp?id=<%=id%>&type=<%=type%>&hname=<%=hname%>&key=<%=key%>" method="post" id="comment"></form>
			<form action="u_bookhotel.jsp?id=<%=id%>&type=<%=type%>&hname=<%=hname%>&key=<%=key%>" method="post" id="book"></form>
			<form action="u_hotel_gmap.jsp?id=<%=id%>&type=<%=type%>&hname=<%=hname%>&key=<%=key%>" method="post" id="map"></form>
		
			    <input type="submit" name="comment" form="comment" value="Review" class="button"/>
			    
		        <input type="submit" name="Book" value="Book Hotel" form="book" class="button"/>
			   
		        <input type="submit" name="gmap" value="Directions" form="map" class="button"/>
			   
			
					
					<table width="500" height="97" align="left">
					 <%
					String sql2="select distinct(ftype) from fooditems";
					Statement st2=connection.createStatement();
					ResultSet rs2=st2.executeQuery(sql2);
					while(rs2.next())
					{
					String ftype=rs2.getString(1);
					%>
					<tr>
					  <th colspan="4"><span class="style14"> <%=ftype%></span></th>
					</tr>
					<%
					
					String sql3="select id,itemname,description,price from fooditems where ftype='"+ftype+"' and hotel_id='"+id+"'";
					Statement st3=connection.createStatement();
					ResultSet rs3=st3.executeQuery(sql3);
					while(rs3.next())
					{
						
						int k=rs3.getInt(1);
						String itemname=rs3.getString(2);
						String des=rs3.getString(3);
						String price=rs3.getString(4);
						
						%>
						<tr>
							<td width="82" height="38"><img src="profile_pic.jsp?id=<%=k%>&type=<%="fooditem"%>" width="50" height="50"/></td>
							<td width="101"><%=itemname%></td>
							<td width="150"><%=des%></td>
							<td width="147"><%=price%></td>						
						</tr>
						
			<%
					
					}
				
				}
				
				String sql="select * from hotel_comments where hotel_id='"+id+"'";
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(sql);
				while(rs.next())
				{
					String uname=rs.getString(3);
					String cmt1=rs.getString(4);
					String dt=rs.getString(5);
					
					if(m==0)
					{
						%><tr><th colspan="4"> <p>&nbsp;</p>
			  <p class="style17">Comments </p></th></tr><%
					}m=1;
					%>
					 <tr>
						<th><span class="style15"><%=uname%> </span></th>
						<td colspan="2"><span class="style16"><%=cmt1%></span></td>
						<td><span class="style16"><%=dt%></span></td>
					</tr>
					<%
				}
		
			%>
			<br />
			<%String cmt=request.getParameter("comment");
			if(cmt!=null)
			{
			 %>
			 <form action="u_insertcomment.jsp?id=<%=id%>&type=<%=type%>&hname=<%=hname%>&key=<%=key%>" method="post">
			 <tr>
				<th><span class="style15">Comment :</span></th>
				<td colspan="2"><textarea name="cmt" rows="3" cols="35"></textarea></td>
				<td><input type="submit" name="submit" value="Submit" class="submitRev"/></td>
			</tr>
			</form>
			<%}%>
			
			</table>
			<table>
			&nbsp;
			
			</table>
					<%
		
	}
	catch(Exception e)
	{
		%>
		<p class="style1">No more details available</p>
		<img src="Gallery/NoData.png" width="50%" height="50%" alt="No Data"></img>
		<% 
	}	
		
		
		%>

						
			</p>
           <p align="right"> &nbsp;<a href="u_searchresults.jsp?type=<%=type%>&key=<%=key%>">Back</a></p>
          </div>
          <p>&nbsp;</p>
          <p align="right" class="style12"></p>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="userlogin.jsp">Logout</a></li>
            <li></li>
          </ul>
        </div>
       <!--  <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <div class="clr"></div>
          <ul class="ex_menu"><li></li>
            <li></li>
          </ul>
        </div> -->
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
       <!--  <h2><span>Image</span> Gallery</h2> --> 
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2>&nbsp;</h2>
      </div>
      <div class="col c3">
        <h2>&nbsp;</h2>
      </div>
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
