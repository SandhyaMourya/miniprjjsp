<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>users account details</title>
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
input[type=text], input[type=password] {
    width: 60%;
    padding: 10px 20px;
    margin: 10px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
.button {
    background-color: #4CAF50;
    color: white;
    padding:7px 6px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
}

.button:hover {
    opacity: 0.8;
}
.style9 {
	font-size: 28px;
	color: #FF6600;
}
.style10 {
	color: #009933;
	font-size: 16px;
}
.style4,.style5
{
font-size: 14px;
}
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style13 {color: #006666}
.style17 {font-size: 14px}
.style19 {color: #003366}
.style21 {color: #FFFF00; font-weight: bold; }
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
        <!--   <li><a href="#"><span><%=user%></span></a></li> -->
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
        <h3 align="left" class="style9"> Account Details </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
				    <p align="justify">
		   <table>		 
			 <%@ include file="connect.jsp" %>
			<%
			try
			{
				
				 String accname=request.getParameter("accname");
				String pass=request.getParameter("pass");
				if(accname==null){
		 %>
		   
               <form action="u_viewaccount.jsp" method="post"> 
               <tr>
                 <th><span class="style4 style9 style13 style17"><span class="style4 style19">Account Holder Name </span></span></th>
                 <td><input name="accname" type="text" value="<%=user%>" autocomplete="off" required></td>
               </tr>
               <tr>
                 <th><span class="style4 style9 style13 style17"><span class="style4 style19">Enter Login Password </span></span></th>
                 <td><input name="pass" type="password" autocomplete="off" required></td>
               </tr>
               <tr>
			   <td width="261"><span class="style4"></span></td>
			   <td width="315"><label>
			     <input type="submit" class="button" name="Submit" value="Submit">
			   </label>&nbsp;<a href="u_account.jsp" >Back</a></td>
			   </tr>
			   </form>
		  </table>
			<table width="505" height="195">
    
		   <%
		   }
		   		
		  		String s1,s2,s3,s4,s5,s6;
				int amt=0;
				if(accname!=null)
				{
					String sql="select * from user where username='"+user+"' and password='"+pass+"'";
					Statement st=connection.createStatement();
					ResultSet rs=st.executeQuery(sql);
					if(rs.next()) 
					{
						String sql1="select * from accounts where username='"+accname+"'";
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(sql1);
						if(rs1.next())
						{
							s1=rs1.getString(3);
							s2=rs1.getString(4);
							s3=rs1.getString(5);
							amt=rs1.getInt(6);
							s4=rs1.getString(7);
							%>
								<tr>
								  <th width="182" ><div align="left" ><span class="style4 ">Account Name</span></div></th>
									<td width="311"><span class="style5"><%=user%></span></td>			
								</tr>
								<tr>
								  <th ><div align="left" ><span class="style4 ">Account Number</span></div></th>
									<td><span class="style5"><%=s1%></span></td>			
								</tr>
								<tr>
								  <th ><div align="left" ><span class="style4 ">Email</span></div></th>
									<td><span class="style5"><%=s2%></span></td>			
								</tr>
								<tr>
								  <th ><div align="left" ><span class="style4 ">Mobile</span></div></th>
									<td><span class="style5"><%=s3%></span></td>			
								</tr>
								<tr>
								  <th ><div align="left" ><span class="style4 ">Amount</span></div></th>
									<td><span class="style5"><%=amt%></span></td>			
								</tr>
								<tr>
								  <th ><div align="left" ><span class="style4 ">Date on Account Created</span></div></th>
									<td><span class="style5"><%=s4%></span>
									&nbsp;<a href="u_account.jsp" >Back</a></td>
									</td>			
								</tr>
								
							<%
						}
						else
						{
							%>
							<h3 class="style10">Account Not Found <br> Please Create Account</h3>
							<%
						} 
					}
					else
					{
						%>
						<h3 class="style10">Wrong Password..!! <br> Please Enter Correct Password</h3>
						<%
					}
					
				}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
		<!-- <a href="u_account.jsp" style="padding-left:60%;">Back</a> -->
          </div>
          <p>&nbsp;</p>
         <!--  <div class="clr"></div> -->
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
