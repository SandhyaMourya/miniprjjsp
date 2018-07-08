<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user registration page</title>
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
<script>
$(document).ready(function(){
    //$("p").click(function(){
        $('.trr').hide();
        
    //});
    
        $("#email").blur(function(){
            $('.trr').show();
        });
});


function validate_mo()
	{
	var no=document.getElementById('mobile').value;


	var len=no.length;
	if(len!=10)
		alert("Please enter 10 digit mobile no");
	
	}
		

</script>


<style type="text/css">
<!--
.style1 {color: #FF3300}
.style2 {color: #333333}
.style7 {font-size: 14}
.style9 {
	font-size: 36px;
	color: #FF6600;
}
.style12 {
	color: #009933;
	font-size: 16px;
    font-weight: bold;
}
.style14 {color:#fc6400	;
         font:normal 13px/2.5em "Liberation sans", Arial, Helvetica, sans-serif}

.register{
			
			cursor: pointer;	
			background: rgb(61, 157, 179);
			padding: 2px;
			font-family: 'BebasNeueRegular','Arial Narrow',Arial,sans-serif;
			color: #fff;
			font-size: 15px;	
			border: 1px solid rgb(28, 108, 122);	
			margin-bottom: 10px;	
			text-shadow: 0 1px 1px rgba(0, 0, 0, 0.5);
			border-radius: 2px;	
			box-shadow:
			0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,
			0px 0px 0px 3px rgb(254, 254, 254),
			0px 5px 3px 3px rgb(210, 210, 210);
			transition: all 0.2s linear;

				}
				
.myform
				{
				background-color:#ededed5e;
				font-family:"Lucida Sans Unicode","Lucida Grande","sans-serif";
				font-size:15px;
				width:570px;
				padding:1px;
				border:1px solid #00ff4b5c;
				border-color:#00ebff80;
				box-shadow:
			   0px 1px 10px 4px rgb(0, 0, 0, 0.16),
			    0px 0px 2px 3px rgba(24, 45, 32, 0.38), 
			    0px 0px 2px 3px rgba(21, 21, 21, 0.07)              }
 .myform *
				{
				box-sizing:border-box;
				}

submit:hover
				{
					background:rgb(23,89,123);
					cursor:pointer;
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
     <!--   <div class="clr"></div> -->
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="userlogin.jsp"><span>User</span></a></li>
		    <li class="active"><a href="u_register.jsp"><span>Register</span></a></li>
          <li><a href="adminlogin.jsp"><span>Admin</span></a></li>
          <li></li>
          <li></li>
        </ul>
      </div>
     
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" />Mining Competitors from Large Unstructured Datasets</a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><br />
          Mining Competitors from Large Unstructured Datasets<br />
         </span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><br />
         Mining Competitors from Large Unstructured Datasets <br />
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
        <center><h3 class="style9">Registration Form </h3></center>
          <div class="clr"></div>
        <!--  <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
            <p align="justify" style="text-indent:20px;">
			
			 <!-- <span class="style2"><strong>Note : </strong></span>
            <span class="style7 style1">*<span class="style2">=</span>Required</span>---->
			<%String msg=(String)application.getAttribute("msg");
			if(msg!=null)
			{
			%>
			<h4 class="style12">  <%=msg%></h4>
			<%
			}
			application.removeAttribute("msg");
			%>
			
         <center><form action="u_insertdata.jsp" class="myform" method="post" enctype="multipart/form-data">
		<table width="501">
					    <tr>
                          <th width="191" height="43" ><div align="left" class="style14">User Name *</div></th>
                          <td width="218"><input id="name" name="userid" class="text" required placeholder="Your name" autocomplete="off"/></td>
                        </tr>
                        <tr>
                          <th height="43"><div align="left" class="style14">Password *</div></th>
                          <td><input type="password" id="password" name="pass" class="text" required placeholder="password" autocomplete="off"/></td>
                        </tr>
                        <tr>
                          <th height="43"><div align="left" class="style14">Email Address *</div></th>
                          <td><input id="email" name="email" class="text" requred placeholder="Email" autocomplete="off"/></td>
                        </tr>
                        
                        <tr class="trr">
                          <th height="43"><div align="left" class="style14">Mobile Number *</div></th>
                          <td><input id="mobile" name="mobile" class="text" required placeholder="your mobile number" autocomplete="off"/></td>
                        </tr>
                        <tr class="trr">
                          <th height="43"><div align="left" class="style14">Date of Birth *</div></th>
                          <td><input id="dob" name="dob" type="date" class="text" required autocomplete="off"/></td>
                        </tr>
                        <tr class="trr">
                          <th height="43"><div align="left" class="style14">Select Gender *</div></th>
                          <td><select id="s1" name="gender" style="width:170px;" class="text">
                            <option>--Select--</option>
                            <option>MALE</option>
                            <option>FEMALE</option>
                          </select></td>
                        </tr>
                                           
                        <tr class="trr">
                          <th height="65"><div align="left" class="style14">Address * </div></th>
                          <td><textarea id="address" name="address" rows="3" cols="21" required placeholder="area name,city"></textarea></td>
                        </tr>
						  <tr class="trr">
                          <th height="43"><div align="left" class="style14">Location *</div></th>
                          <td><input id="loc" name="loc" class="text" required placeholder="area name" autocomplete="off"/></td>
                        </tr>
                        <tr class="trr">
                          <th height="43"><div align="left" class="style14">Enter Pincode *</div></th>
                          <td><input id="pincode" name="pincode" class="text" required placeholder="area pincode" autocomplete="off"/></td>
                        </tr>
                        <tr class="trr">
                          <th height="43"><div align="left" class="style14">Select Profile Picture *</div></th>
                          <td><input type="file" id="pic" required name="pic" class="text" /></td>
                        </tr>
                        
                        
                        <tr class="trr">
                          <td height="43" rowspan="3"></td>
                          <td align="left" valign="middle"><input class="register" type="submit" value="REGISTER" onclick= "validate_mo();" />
                            &nbsp;&nbsp;&nbsp;<a href="userlogin.jsp" class="style4">Back</a>					
                            </td>
                        </tr>
              </table>
      </form>
			
			
			</p>
            <p class="spec"><a href="#" class="rm"></a></p>
          </div>
          <div class="clr"></div>
        </div>
        
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="index.html">Home</a></strong></li>
            <li><strong><a href="userlogin.jsp">User</a></strong></li>
            <li><strong><a href="adminlogin.jsp">Admin</a></strong></li>
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
<div align="center"></div>
</body>
</html>
