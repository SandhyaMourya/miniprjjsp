<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user login page</title>
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
.style1 {color: #FF3300}
.style2 {color: #333333}
.style6 {color: #333333; font-size: 15px; }
.style7 {font-size: 14}
.style8 {color: #009999}
.style9 {
	font-size: 26px;
	color: #FF6600;
}
form {border: 3px solid #f1f1f1;}

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

.cancelbtn {
    width: 30%;
    padding: 14px 20px;
    background-color: #f44336;
}



.container {
    padding: 16px;
    width:50%;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
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
      <!-- <div class="clr"></div>  -->
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="userlogin.jsp"><span>User</span></a></li>
		    <li><a href="u_register.jsp"><span>Register</span></a></li>
          <li><a href="adminlogin.jsp"><span>Admin</span></a></li>
          <li></li>
          <li></li>
        </ul>
      </div>
     
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height=320 alt="" />Mining Competitors from Large Unstructured Datasets</a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><br />
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
        <h3 align="center" class="style9" >User Login</h3>
         <!--  <div class="clr"></div>  -->
         <!--  <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div> --->
          <div class="post_content">
           <!--  <p align="justify" style="text-indent:20px;">  -->
			
		<!--  <span class="style2"><strong>Note : </strong></span>
           <span class="style7 style1">*<span class="style2">=</span>Required</span>--->
         <center> <form class="myform" action="authentication.jsp?type=<%="user"%>" method="post">
             	 <div class="imgcontainer">
    			<!-- <img src="Gallery/images (3).png" alt="Avatar" class="avatar">  -->
  			</div>

  			<div class="container">
    			<label for="uname"><b>Username</b></label>
    			<input type="text" placeholder="Enter Username" id="name" name="userid" required autocomplete="off"/>

    			<label for="psw"><b>Password</b></label>
    			<input type="password" placeholder="Enter Password" name="pass" id="password" required autocomplete="off"/>
        
    			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit">Login</button>
    			<button type="reset" class="cancelbtn">Reset</button>
    			 <span class="style8">New User? </span> <a href="u_register.jsp">Register</a> 
    			
    
  			</div>

  			
      </form></center>
			 
			
			</p>
           <!--  <p class="spec"><a href="#" class="rm"></a></p> -->
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
<div align=center></div>
</body>
</html>
