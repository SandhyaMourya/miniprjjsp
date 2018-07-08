<%@ page import="java.util.regex.Matcher,java.util.regex.Pattern" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>mall details</title>
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
img{
	padding:12px 60px;
	}
input[type=text], input[type=password] {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 30%;
	}
button:hover {
    opacity: 0.8;
	}
table
	{
	border-color:white;
	border-radius:2;
	}
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
.style20 {font-sixe:12px;font-family:Tomes New Roman;}
.style21 {font-size: 14px; color: #FFFF00; }
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
       <!--    <li><a href="#"><span><%=admin%></span></a></li>  -->
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
        <h3 align="left" class="style9"> Mall Details </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
            <table width="384" border="2" align="left"  cellpadding="0" cellspacing="0" >
           
            <%@ include file="connect.jsp" %>
            <%
			String id=request.getParameter("id");
			String mname=request.getParameter("mname");
			String area=request.getParameter("area");
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
int i=0,j=0,m=0,n=0;
try 
{
	%>
	<%  StringBuffer stringbf = new StringBuffer();
        Matcher mat = Pattern.compile(
                "([a-z])([a-z]*)", Pattern.CASE_INSENSITIVE).matcher(mname);
             
             while (mat.find()) {
                mat.appendReplacement(
                   stringbf, mat.group(1).toUpperCase() + mat.group(2).toLowerCase());
             }
             mname = mat.appendTail(stringbf).toString(); %>
	
	<h3> <span class="style19">Name :</span> <span class="style18"><%=mname%>, <%=area%>.</span></h3>
	
	<%
	String query="select * from malls where id='"+id+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	if ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);//mallname
		s2=rs.getString(3);//description
		s3=rs.getString(4);//special
		s4=rs.getString(5);//area
		s5=rs.getString(6);//location
		s6=rs.getString(7);//dfrom
		s7=rs.getString(8);//distance
		s8=rs.getString(11);//rank
	
			%>
			<tr>
			<td colspan="2"><img src="profile_pic.jsp?id=<%=i%>&type=<%="mall"%>"  width="200px" height="90px"/></td>
			</tr>
            <tr>
				<th width="147"><div align="left" class="style20">Mall Description : </div></th>
                <td  width="229" height="33" align="center" valign="middle" ><span class="style5">
                <%out.println(s2);%></span></td>
			</tr>
			<tr>
				<th><div align="left" class="style20">Mall Special : </div></th>
                <td width="229" height="33" align="center" valign="middle"><span class="style5">
                <%out.println(s3);%></span></td>
			</tr>
			<tr>
				<th><div align="left" class="style20">Location : </div></th>
                <td width="229" height="33" align="center" valign="middle"><span class="style5">
                <%out.println(s5);%></span></td>
			</tr>
			<tr>
				<th><div align="left" class="style20">Distance from : </div></th>
			 <td  width="229" height="33" align="center" valign="middle"><span class="style5">
			   <%out.println(s6);%> (<%out.println(s7);%>)</span></td>
			</tr>
			<tr>
             	<th><div align="left" class="style20">Rank : </div></th>
			   	<td  width="229" height="33" align="center" valign="middle"><span class="style5">
		   	    <%out.println(s8);%></span></td>
			  </tr>
              
	<%
		}%>
		</table>
          
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <table width="425">
		<%
		
		String sql2="select * from mall_comments where mall_id='"+id+"'";
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
					<th width="70" height="29" bgcolor="#000000"><span class="style21">Username</span></th>
					<th width="73" bgcolor="#000000"><span class="style21">Comment</span></th>
					<th width="81" bgcolor="#000000"><span class="style21">Date</span></th>
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
          <p align="right" class="style12"><a href="allmalls.jsp">Back</a> </p>
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
