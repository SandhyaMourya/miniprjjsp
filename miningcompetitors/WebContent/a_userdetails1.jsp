<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user profile details</title>

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
.style11 {color: #009999}
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style14 {color:#000000 #FFFF00; font-weight: bold; }
table
	{
	margin-top:-15px;
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
          <!--- <li><a href="#"><span><%=admin%></span></a></li> --->
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
        <h3 align="left" class="style9"> User Profile Details </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
            <p align="justify">
          
            <table width="600" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
	
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

			  <%
						String uname=request.getParameter("uname");
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+uname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(8);
								s6=rs.getString(10);

					%>
			  <tr>
				<td width="196" rowspan="8"><div class="style7" style="margin:10px 13px 10px 13px;" >
			    <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:170px; height:200px;"/></div></td>
			  </tr>
					
			  <tr>
			    <th width="168" bgcolor="#E0E0E0"><div align="left" class="style14"><span class="style10" style="margin-left:15px;">Name</span></div></th>
			    <td  width="228" valign="middle" height="42" ><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s1);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#E0E0E0"><div align="left" class="style14"><span class="style10" style="margin-left:15px;">E-Mail</span></div></th>
			    <td  width="228" valign="middle" height="43" ><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s2);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#E0E0E0"><div align="left" class="style14"><span class="style10" style="margin-left:15px;">Mobile</span></div></th>
			    <td  width="228" valign="middle" height="44"><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s3);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#E0E0E0"><div align="left" class="style14"><span class="style10" style="margin-left:15px;">Date Of Birth</span></div></th>                    	
			    <td  width="228" align="left" valign="middle" height="39"><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s4);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#E0E0E0"><div align="left" class="style14"><span class="style10" style="margin-left:15px;">Status</span></div></th>
			    <td  width="228" align="left" valign="middle" height="40"><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s6);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#E0E0E0"><div align="left" class="style14"><span class="style10" style="margin-left:15px;">Address</span></div></th>
			    <td  width="228" align="left" valign="middle" height="59"><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s5);%>
		        </div></td>
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
						
			</p>
            <p>&nbsp;</p>
            <p class="spec"><a href="#" class="rm"></a></p>
          </div>
          <div class="clr style12"></div>
          <div align="right" class="style12">
            <p>&nbsp;</p>
            <p><a href="a_hotelbookingdetails.jsp">Back</a></p>
          </div>
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
     <!--    <div class="gadget">
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
