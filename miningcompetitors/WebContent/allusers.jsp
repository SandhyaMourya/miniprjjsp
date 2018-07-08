<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all users list</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" href="Gallery/datamining.jpg">

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
	margin-right: 36px;
}
.style15 {color: #161616; font-weight: bold; }
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 5px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
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
	  <%String admin=(String)application.getAttribute("admin"); %>
        <ul>
          <li><a href="adminmain.jsp"><span>Home </span></a></li>
          <li><a href="#"><span><%=admin%></span></a></li>
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
        <h3 align="left" class="style9"> Users List </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
            <table  align="left">
            <tr>
              <th height="32" bgcolor="#D0D0D0"><span class="style15"> Username</span></th>
              <th bgcolor="#D0D0D0"><span class="style15">Email</span></th>
			  <th bgcolor="#D0D0D0"><span class="style15">Mobile Number</span></th>
              <th bgcolor="#D0D0D0"><span class="style15">status</span></th>
              <th bgcolor="#D0D0D0"><span class="style15">View</span></th>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from user"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(4);
		s4=rs.getString(5);
		s3=rs.getString(10);
	
			%>
            <tr>
              <td  width="86" height="30" align="center" valign="middle" ><span class="style5"><%out.println(s1);%></span></td>
              <td  width="141" height="30" align="center" valign="middle"><span class="style5"><%out.println(s2);%></span></td>
			   <td  width="128" height="30" align="center" valign="middle"><span class="style5"><%out.println(s4);%></span></td>
              <%
						if(s3.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="73" height="30" align="center" valign="middle"> <a href="conformuser.jsp?mid=<%=i%>&utype=<%="user"%>">waiting&nbsp;</a></td>
              <%
						}
						else
						{ 
						%>
              <td  width="91" height="30" align="center" valign="middle"><span class="style5">
                <%out.println(s3);%>
              </span></td>
              <%
						}
						
						%>
              <td  width="63" valign="middle" height="30" style="color:#000000;"align="center"><a href="a_userdetails.jsp?mid=<%=i%>">more info..&nbsp;</a></td>
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
	
            	
           <!--  <p class="spec"><a href="#" class="rm"></a></p> --->
          </div>
            <!-- <p align="right">&nbsp;</p> --->
          <p align="right"  class="style12"><a href="adminmain.jsp">Back</a> </p>
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
