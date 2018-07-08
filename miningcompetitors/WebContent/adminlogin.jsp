<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>admin login</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="icon" href="Gallery/datamining.jpg"/>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
	
	<script type="text/javascript" src="js/cufon-yui.js"></script>
	<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript" src="js/coin-slider.min.js"></script>
	<style type="text/css">
	<!--
	.style1 {color: #FF3300;}
	.style2 {color: #333333;}
	.style7 {font-size:13px;color:#006aff;}
	.style9 {
		font-size: 25px;
		color: #FF6600;
	}
	form {border: 3px solid #f1f1f1;}
	
	input[type=text], input[type=password] {
	    width: 55%;
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
	    width: 20%;
	}
	
	button:hover {
	    opacity: 0.8;
	}
	
	.cancelbtn {
	    width: 20%;
	    padding: 14px 20px;
	    background-color: #f44336;
	}
	.container {
	    padding: 16px;
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
	form {
	    max-width: 100%;
	    height: auto;
	    width: 70%;
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
        <ul>
          <li class="active"><a href="index.html"><span>Home </span></a></li>
          <li><a href="userlogin.jsp"><span>User</span></a></li>
          <li><a href="adminlogin.jsp"><span>Admin</span></a></li>
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
        <center><div class="article">
        <h3 class="style9">Admin Login</h3>
          <div class="post_content">
           <!-- <p align="justify" style="text-indent:20px;"> --> 
			<!-- <span class="style2"><strong>Note : </strong></span> 
            <span class="style7 style1">*<span class="style2">=</span>Required</span> --->	
          	<form action="authentication.jsp?type=<%="admin"%>" method="post" class="myform">
      			<div class="container">
	    			<label for="uname"><b>User Name</b></label>
	    			<input type="text" placeholder="Name" id="name" name="userid" required autocomplete="off"/>
					 </br>
	    			<label for="psw"><b>Password</b></label>
	    			<input type="password" placeholder="Password" name="pass" id="password" required autocomplete="off"/>
	        		</br>
	    			<button type="submit">Login</button>
	    			<button type="reset" class="cancelbtn">Reset</button>
   				</div>
   			 </form>
			
			
			<!-- </p> -->
            <p class="spec"><a href="#" class="rm"></a></p>
          </div>
         <div class="clr"></div>
       </div></center>
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
</body>
</html>
