
<%@ include file="connect.jsp"%>

<%
try
{

ResultSet rs=connection.createStatement().executeQuery("SELECT hotelname,rank,location FROM hotels");
%><html>
<head>
<title>image Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style2 {color: #6666CC}
-->
</style>
</head>
<body>
<div id="graph">Loading graph...</div>

<div align="center">
    <script type="text/javascript">
var myData=new Array();
var colors=[];
var m=150;
<%
	int i=0;
	
	String s1=null;
	
	while(rs.next())
	{
	 s1=rs.getString(1);
	int  s2=rs.getInt(2);
		String area=rs.getString(3);
	
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>(<%=area%>)",<%=s2%>];
       m=m+250;     
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setSize(m, 400);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#336633');
	myChart.setTitle(" Hotels ");
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#6666CC');
	myChart.draw();
	
  </script>
  </div>
</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

