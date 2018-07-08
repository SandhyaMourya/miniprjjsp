<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>hotel details</title>
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
	font-size: 36px;
	color: #FF6600;
}
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style13 {
	font-size: 16px;
	color: #006666;
}
.style18 {
	font-size: 24px;
	color: #FF9933;
}
.style19 {
	font-size: 24px;
	color: #009966;
}
.style21 {color: #FFFF00; font-weight: bold; }
.style23 {font-size: 14px; color: #FFFF00; }
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
	  <%String admin=(String)application.getAttribute("admin"); %>
        <ul>
          <li><a href="adminmain.jsp"><span>Home </span></a></li>
        <!--   <li><a href="#"><span><%=admin%></span></a></li>  -->
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
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <h3 align="left" class="style9"> Hotel Details </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
            <table width="384" border="2" align="left"  cellpadding="0" cellspacing="0" >
           
            <%@ include file="connect.jsp" %>
            <%
			String id=request.getParameter("id");
			String hname=request.getParameter("hname");
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,area="",loc="";
int i=0,j=0,m=0,n=0;
try 
{
	%>
	
	<h3> <span class="style19">Hotel Name :</span> <span class="style18"><%=hname%>.</span></h3>
	
	<%
	String sql3="select rank,dfrom,distance,area,location from hotels where id='"+id+"'";
	Statement st3=connection.createStatement();
	ResultSet rs3=st3.executeQuery(sql3);
	if(rs3.next())
	{
		int rank=rs3.getInt(1);
		s4=rs3.getString(2);
		int distance=rs3.getInt(3);
		area=rs3.getString(4);
		loc=rs3.getString(5);
			
	
	String query="select * from roomdetails where hotel_id='"+id+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	if ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(3);
		s2=rs.getString(4);
		s3=rs.getString(5);
		s5=rs.getString(8);
			%>
			<tr>
			<td colspan="2"><img src="profile_pic.jsp?id=<%=i%>&type=<%="room"%>"  width="100px" height="70px"/></td>
			</tr>
			  <tr>
				<th width="167" ><div align="left" class="style21">Location : </div></th>
                <td  width="209" height="33" align="center" valign="middle" ><span class="style5">
                <%=area%>, <%=loc%></span></td>
			</tr>
            <tr>
				<th width="167" ><div align="left" class="style21">Total Number Of Rooms : </div></th>
                <td  width="209" height="33" align="center" valign="middle" ><span class="style5">
                <%out.println(s1);%></span></td>
			</tr>
			<tr>
				<th width="167" ><div align="left" class="style21">Number Of Rooms Aviable : </div></th>
                <td  width="209" height="33" align="center" valign="middle" ><span class="style5">
                <%out.println(s5);%></span></td>
			</tr>
			<tr>
				<th ><div align="left" class="style21">Room Price : </div></th>
                <td width="209" height="33" align="center" valign="middle"><span class="style5">
                <%out.println(s2);%></span></td>
			</tr>
			<tr>
				<th ><div align="left" class="style21">Distance from : </div></th>
			 <td  width="209" height="33" align="center" valign="middle"><span class="style5">
			   <%out.println(s4);%> (<%out.println(distance);%> Kms)</span></td>
			</tr>
			<tr>
             	<th ><div align="left" class="style21">Rank : </div></th>
			   	<td  width="209" height="33" align="center" valign="middle"><span class="style5">
		   	    <%out.println(rank);%></span></td>
			  </tr>
			<tr>
             	<th ><div align="left" class="style21">Phone Number : </div></th>
			   	<td  width="209" height="33" align="center" valign="middle"><span class="style5">
		   	    <%out.println(s3);%></span></td>
			  </tr>
              
	<%}
		}%>
		</table>
            <p><br /></p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <table width="425">
		<%
		
		String sql1="select * from fooditems where hotel_id='"+id+"'";
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(sql1);
		while(rs1.next())
		{
			j=rs1.getInt(1);
			s6=rs1.getString(3);
			s7=rs1.getString(4);
			s8=rs1.getString(5);
			s9=rs1.getString(6);
			
			if(m==0)
			{
			%>
				<tr>
					<th height="32" colspan="5"><span class="style13">Food Items Details</span></th>
				</tr>
				<tr>
					<th width="70" height="29" ><span class="style23">Item</span></th>
					<th width="73" ><span class="style23">Food Type</span></th>
					<th width="81" ><span class="style23">Item Name</span></th>
					<th width="139" ><span class="style23">Item Description</span></th>
					<th width="38" ><span class="style23">Cost</span></th>
				</tr>
			<%
			}m=1;
			%>
			<tr>
				<th><img src="profile_pic.jsp?id=<%=j%>&type=<%="fooditem"%>" width="50" height="40"/></th>
				<th><%=s6%></th>
				<th><%=s7%></th>
				<th><%=s8%></th>
				<th><%=s9%></th>
			</tr>
			
			<%	
		}
		%>
			</table>
            <p>&nbsp;</p>
            <table width="425">
		<%
		
		String sql2="select * from hotel_comments where hotel_id='"+id+"'";
		Statement st2=connection.createStatement();
		ResultSet rs2=st2.executeQuery(sql2);
		while(rs2.next())
		{
			s10=rs2.getString(3);
			s11=rs2.getString(4);
			s12=rs2.getString(5);
			
			if(n==0)
			{
			%>
				<tr>
					<th height="32" colspan="3"><span class="style13">Comments</span></th>
				</tr>
				<tr>
					<th width="70" height="29" ><span class="style23">Username</span></th>
					<th width="73" ><span class="style23">Comment</span></th>
					<th width="81" ><span class="style23">Date</span></th>
				</tr>
			<%
			}n=1;
			%>
			<tr>
				<th><%=s10%></th>
				<th><%=s11%></th>
				<th><%=s12%></th>
			</tr>
			
			<%	
		}
		
		
		
		
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
					%>
      </table>
	
            	
            <p class="spec"><a href="#" class="rm"></a></p>
          </div>
            <p align="right">&nbsp;</p>
          <p align="right" class="style12"><a href="a_hotelbookingdetails.jsp">Back</a> </p>
          <div class="clr"></div>
        </div>
        
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
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
