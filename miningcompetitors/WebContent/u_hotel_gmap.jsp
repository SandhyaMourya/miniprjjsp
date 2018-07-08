<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="icon" href="Gallery/datamining.jpg"/>
  
  <meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" type="text/css" href="style.css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyD0X4v7eqMFcWCR-VZAJwEMfb47id9IZao">
    </script>
	<style>
	body {
		color: black;
		font-family: arial,sans-serif;
		font-size: 13px;
	}
	</style>
    <script type="text/javascript">
	var map;
	var rendererOptions = {draggable: true};
	var directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);
	var directionsService = new google.maps.DirectionsService();
	
	$(document).ready(function () {
			
			//draw a map centered at Empire State Building Newyork
		    var latlng = new google.maps.LatLng(12.9716, 77.5946);
	        var myOptions = {
	            zoom: 15,
	            center: latlng,
	            mapTypeId: google.maps.MapTypeId.ROADMAP
	        };
	        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	
			directionsDisplay.setMap(map);
			directionsDisplay.setPanel(document.getElementById("divDirections"));
			
			$("#btnGetDirections").click(function(){
				calcRoute($("#txtAddress1").val(),$("#txtAddress2").val());
			});
			 
			 
	});				  
      
	function calcRoute(start,end) {
	  var request = {
		origin:start,
		destination:end,
		travelMode: google.maps.TravelMode.DRIVING,
		provideRouteAlternatives : false
	  };
	  directionsService.route(request, function(result, status) {
		if (status == google.maps.DirectionsStatus.OK) {
		  directionsDisplay.setDirections(result);
		}
	  });
	}
  	
    </script>
  </head>

  <body>
  <%@ include file="connect.jsp" %>
  	<%
		String user=(String)application.getAttribute("user");
		String type=request.getParameter("type");
		String id=request.getParameter("id");
		String hname=request.getParameter("hname");
		String key=request.getParameter("key");
		String s1="",s2="",s3="";
		try
		{
			String sql="select address from user where username='"+user+"'";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			if(rs.next())
			{
				s1=rs.getString(1);
			}
			String sql1="select area,location from hotels where hotelname='"+hname+"'";
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			if(rs1.next())
			{
				s2=rs1.getString(1);
				s3=rs1.getString(2);
			}
		
%>
    <div id="container" class="shadow">
        <div id="map_canvas"></div>
        <div id="sidebar">
            <div class="row" style="background:#E3EDFA">

			
                <label> Enter Address</label>
				<input type="text" id="txtAddress1" class="text" value="<%=s1%>" />
                <input type="text" id="txtAddress2" class="text" value="<%=s2%>,<%=s3%>" />
                <img src="images/search.png" id="btnGetDirections" border="0" width="24" height="24" style="vertical-align:middle;"  />

            </div>
            <div class="separator"></div>
			<div id="divDirections">

			</div>

        </div>
		<p>&nbsp;</p>
		<p align="right"><a href="u_viewhoteldetails.jsp?id=<%=id%>&type=<%=type%>&hname=<%=hname%>&key=<%=key%>">Back</a></p>
    </div>
	<%
	}
	catch(Exception e)
	{
	out.print(e);
	}
	%>
	
  </body>
</html>