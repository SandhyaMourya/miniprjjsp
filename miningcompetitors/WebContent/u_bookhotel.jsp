<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>search results page</title>
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
.style15 {
	color: #009933;
	font-size: 14px;
}
.style16 {color: #FF00FF}
-->
</style>
<script type="text/javascript">
function mul()
{
	var n1=document.getElementById('rent').value;
	var n2=document.getElementById('n').value;

	if(n1=="")
	n1=0;
	if(n2=="")
	n2=0;
	
	var total=parseInt(n1)*parseInt(n2);
	if(!isNaN(total))
	{
		document.getElementById('total').value=total;
	}
}
</script>

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
          <li><a href="#"><span><%=user%></span></a></li>
          <li><a href="userlogin.jsp"><span>Logout</span></a></li>
          <li></li>
          <li></li>
        </ul>
      </div>
     
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" />Mining Competitors from Large Unstructured Datasets</a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><br />
          Mining Competitors from Large Unstructured Datasets<br />
         </span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><br />
         Mining Competitors from Large Unstructured Datasets<br />
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
        <h3 align="left" class="style9"> Book Hotel </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
				    <p align="justify">
 <table width="497" height="286" align="left"  cellpadding="0" cellspacing="0"  >
<%@ include file="connect.jsp" %>
<%
String type=request.getParameter("type");
String id=request.getParameter("id");
String hname=request.getParameter("hname");
String key=request.getParameter("key");
String s1,s2,s3,s4,s5,s6="",s7,s8,s9,s10;
int i=0,j=0;
		
	try	
	{
				String msg=(String)application.getAttribute("msg");
				if(msg!=null)
				{
					%>
					<h3><span class="style15"> <%=msg%></span></h3>
					<%
				}
				application.removeAttribute("msg");
				String sql="select * from hotels where id='"+id+"' ";
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(sql);
				if(rs.next());
				{
					j=rs.getInt(1);
					s1=rs.getString(2);//hname
					s2=rs.getString(3);//area
					
					String sql1="select * from roomdetails where hotel_id='"+id+"' ";
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(sql1);
					if(rs1.next());
					{
						i=rs1.getInt(1);
						s3=rs1.getString(3);//available
						s4=rs1.getString(4);//price
						s5=rs1.getString(8);//avilable
						
							/*String sql3="select acc_no from accounts where username='"+user+"' ";
							Statement st3=connection.createStatement();
							ResultSet rs3=st3.executeQuery(sql3);
							if(rs3.next());
							{
								
								s5=rs3.getString(1);//acc_no*/
												
					%>
					<form action="u_payment.jsp?id=<%=id%>&type=<%=type%>&hname=<%=hname%>&key=<%=key%>" method="post">
					<tr>
					  <th width="204" ><div align="left" class="">Hotel Name : </div></th>
						<td width="291"><%=s1%></td>
					</tr>
					<tr>
					  <th width="204" ><div align="left" class="">Area : </div></th>
						<td width="291"><%=s2%></td>
					</tr>
					<tr>
					  <th width="204" ><div align="left" class="">Total Rooms : </div></th>
						<td width="291"><%=s3%></td>
					</tr>
					<tr>
					  <th width="204" ><div align="left" class="">Number of Rooms Available : </div></th>
						<td width="291"><%=s5%></td>
					</tr>
					<tr>
					  <th ><div align="left" class="">Room Rent including food: </div></th>
						<td><input type="text" value="<%=s4%>" name="rent" id="rent" /></td>
					</tr>
					<tr>
					  <th ><div align="left" class="">Book Number Of Room : </div></th>
						<td><input type="text" id="n"  name="n" onkeyup="mul();"/></td>
					</tr>
					<tr>
					  <th ><div align="left" class="">Total Booking Cost: </div></th>
						<td><input type="text" id="total" name="total"/></td>
					</tr>
					
					<tr>
					<td height="77"></td>
					<td>
					
					    <input type="submit" value=" Book " />				     </td>
					</tr>
					</form>
					  <%
				}
			} 
		}
	catch(Exception e)
	{
		out.print(e);
	}	
		
		
		%>
			</table>			
			</p>
            <p>&nbsp;</p>
            <p class="spec"><a href="#" class="rm"></a></p>
          </div>
          <p>&nbsp;</p>
          <div class="clr"></div>
          <p align="right" class="style12"><a href="u_viewhoteldetails.jsp?type=<%=type%>&id=<%=id%>&hname=<%=hname%>&key=<%=key%>">Back</a></p>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="usermain.jsp">Home</a></strong></li>
            <li><strong><a href="userlogin.jsp">Logout</a></strong></li>
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
