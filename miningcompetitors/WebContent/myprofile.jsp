<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>profile details</title>
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
.style7 {font-size: 14;}
.style9 {
	font-size: 30px;
	color: #FF6600;
}
.style11 {color: #006699;}
.style12 {
	font-size: 14px;
	color: #FF6633;
	margin-right:35px;
}
.style14 {color: black; font-weight: bold; }
tr:hover {background-color:#f5f5f5;}
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
     <!-- <div class="clr"></div>  --> 
      <div class="menu_nav">
	  <%String user=(String)application.getAttribute("user"); %>
        <ul>
          <li><a href="usermain.jsp"><span>Home </span></a></li>
         <!--  <li><a href="#"><span><%=user%></span></a></li>  -->
          <li><a href="userlogin.jsp"><span>Logout</span></a></li>
          <li></li>
          <li></li>
        </ul>
      </div>
 		 <!--     <div class="clr"></div>  -->
      <div class="slider">
        <div id="coin-slider"><a href="#"><span><big>Mining Competitors from Large Unstructured Datasets</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big><br />
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
      	  <!-- <h3 align="left" class="style9"> Profile Details </h3>  --> 
        	  <div class="clr"></div>
         	<!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          		<div class="post_content">
				    <p align="justify">
		    		<center><table>
	
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

			  <%
					
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
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
				<td width="196" rowspan="8"><div class="style7" style="margin:-50px 50px 10px 120px;" >
			    <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:170px; height:200px;"/></div></td>
			  </tr>
		<table>	
			  <tr>
			    <th width="168" bgcolor="#D0D0D0"><div align="left" class="style14"><span style="margin-left:15px;">Name</span></div></th>
			    <td  width="228" valign="middle" height="42" ><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s1);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#D0D0D0"><div align="left" class="style14"><span style="margin-left:15px;">E-Mail</span></div></th>
			    <td  width="228" valign="middle" height="43" ><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s2);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#D0D0D0"><div align="left" class="style14"><span style="margin-left:15px;">Mobile</span></div></th>
			    <td  width="228" valign="middle" height="44"><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s3);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#D0D0D0"><div align="left" class="style14"><span style="margin-left:15px;">Date Of Birth</span></div></th>                    	
			    <td  width="228" align="left" valign="middle" height="39"><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s4);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#D0D0D0"><div align="left" class="style14"><span style="margin-left:15px;">Status</span></div></th>
			    <td  width="228" align="left" valign="middle" height="40"><div align="left" class="style11" style="margin-left:15px;">
			      <%out.println(s6);%>
		        </div></td>
			  </tr>
			  <tr>
			    <th bgcolor="#D0D0D0"><div align="left" class="style14"><span style="margin-left:15px;">Address</span></div></th>
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
	  </table></center>
						
			</p>
           <!--  <p>&nbsp;</p>  -->
        <!--     <p class="spec"><a href="#" class="rm"></a></p> -->
          </div>
        <!--   <p>&nbsp;</p>  -->
        <!--   <div class="clr"></div> -->
        <!-- - <p>&nbsp;</p> --> 
          <p align="right" class="style12"><a href="usermain.jsp">Back</a></p>
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
