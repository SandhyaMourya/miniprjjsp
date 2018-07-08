<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>view mall details</title>
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
.style1{
	font-size:18px;
	color:balck;
	font-family:Times New Roman;
}
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 70%;
}

th, td {
    padding: 1px;
}
tr:hover {background-color:#f5f5f5;} 
.img{
	margin-left:112px;
	}
.style9 {
	font-size: 30px;
	color: #FF6600;
	}	
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style15 {color: #009966}
.style16 {color: #0066CC}
.style17 {
	font-size: 14px;
	color: #009966;
}
table, td, th {    
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 70%;
}

th, td {
    padding: 8px;
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
      	<div class="searchform"></div>
       	<div class="menu_nav">
	  		<%String user=(String)application.getAttribute("user"); %>
        	<ul>
          	<li><a href="usermain.jsp"><span>Home </span></a></li>
          	<!-- <li><a href="#"><span><%=user%></span></a></li>  -->
          	<li><a href="userlogin.jsp"><span>Logout</span></a></li>
        	</ul>
      	</div>
     
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" />Mining Competitors from Large Unstructured Datasets</a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><br />
          Mining Competitors from Large Unstructured Datasets<br />
         </span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><br />
         Mining Competitors from Large Unstructured Datasets<br />
        </span></a> </div>
       
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <h3 align="left" class="style9"> Mall Details </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
				    <p align="justify">

<%@ include file="connect.jsp" %>
<%
String type=request.getParameter("type");
String id=request.getParameter("id");
String mname=request.getParameter("mname");
String key=request.getParameter("key");
String s1,s2,s3,s4,s5,s6="",s7,s8,s9,s10;
int i=0,j=0,m=0,distance=0;
		
	try	
	{
				
				String sql1="select * from malls where id='"+id+"' ";
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(sql1);
				if(rs1.next());
				{
					i=rs1.getInt(1);
					s1=rs1.getString(3);//desc
					s2=rs1.getString(4);//special	
					s3=rs1.getString(5);//mall area
					s4=rs1.getString(6);//mall location
					s5=rs1.getString(7);//dfrom
					distance=rs1.getInt(8);//distance
									
					%>
		    <table>
					<tr>
						<td><img src="profile_pic.jsp?id=<%=i%>&type=<%="mall"%>" width="150px" height="100px" class="img"/> </td>					
					</tr>
					<table>
					<tr>
						<th width="168" bgcolor="#D0D0D0"><div align="left">Name</div></th>	
						<td><div align="left"><span><%=mname%></span></div></td>
					</tr>
					<tr>
					  <th width="168" bgcolor="#D0D0D0"><div align="left" >Description : </div></th>
						<td><span ><%=s1%></span></td>
					</tr>
					<tr>
					  <th width="168" bgcolor="#D0D0D0"><div align="left" >Mall Special : </div></th>
						<td><span ><%=s2%></span></td>
					</tr>
					
					<tr>
					  <th width="168" bgcolor="#D0D0D0"><div align="left" >Distance From  : </div></th>
						<td><span><%=s5%>( <%=distance%> )</span></td>
					</tr>
					<tr>
						<th width="168" bgcolor="#D0D0D0"><div align="left">Address</div></th>
						<td><span><%=s4%></span></td>
					</tr>
			</table>
			</table>
					
					
					  <%
				}
				%> 
					  <br/>
					<table border="none">
					  <%
				String sql="select * from mall_comments where mall_id='"+id+"'";
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(sql);
				while(rs.next())
				{
					String uname=rs.getString(3);
					String cmt1=rs.getString(4);
					String dt=rs.getString(5);
					
					if(m==0)
					{
						%><tr><th colspan="4"><p class="style17">Reviews</p></th></tr><%
					}m=1;
					%>
					 <tr>
						<th width="104"><span class="style15"><%=uname%> </span></th>
						<td colspan="2"><span class="style16"><%=cmt1%></span></td>
					   <td width="83"><span class="style16"><%=dt%></span></td>
					</tr>
					<%
				}
		
			%>
			<br />
			<%String cmt=request.getParameter("comment");
			if(cmt!=null)
			{
			 %>
			 <form action="u_insertcomment.jsp?id=<%=id%>&type=<%=type%>&mname=<%=mname%>&key=<%=key%>" method="post">
			 <tr>
				<th><span class="style15">Enter Review  : </span></th>
				<td colspan="2"><textarea name="cmt" rows="3" cols="35"></textarea></td>
				<td><input type="submit" name="submit" value="Submit" /></td>
			</tr>
			</form>
			<%}%>
			<tr>
			<form action="u_viewmalldetails.jsp?id=<%=id%>&type=<%=type%>&mname=<%=mname%>&key=<%=key%>" method="post" id="comment"></form>
			<form action="u_mall_gmap.jsp?id=<%=id%>&type=<%=type%>&mname=<%=mname%>&key=<%=key%>" method="post" id="map"></form>
			<td colspan="4"><p>&nbsp;
			  </p>
			  <p align="center">
			    <input type="submit" name="comment" form="comment" value="Review"/>
			    &nbsp;&nbsp;
			        <input type="submit" name="gmap" value="  Map  " form="map"/>
			    </p></td>
			</tr>
			</table>
			<p align="right" class="style12"><a href="u_searchresults.jsp?type=<%=type%>&key=<%=key%>">Back</a>
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
            <p>&nbsp;</p>
            <p class="spec"><a href="#" class="rm"></a></p>
          </div>
          <p>&nbsp;</p>
          <div class="clr"></div>
       <!--    <p align="right" class="style12"><a href="u_searchresults.jsp?type=<%=type%>&key=<%=key%>">Back</a></p> -->
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
      </div>
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
<div align=center></div>
</body>
</html>
