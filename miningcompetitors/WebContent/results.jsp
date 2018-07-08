
<%@ include file="connect.jsp"%>

<%
try
{

ResultSet rs=connection.createStatement().executeQuery("SELECT mallname,rank,area FROM malls");
%><html>
<head>
<title>image Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style2 {color: #336633}
.style3 {color: #3366CC}
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
	
	myData["<%=i%>"]=["<%=s1%>(<%=area%>)",<%=s2%>];
       m=m+230;     
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#009999');
	myChart.setBarOpacity(0.8);
	myChart.setSize(m, 400);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#336633');
	myChart.setTitle(" Malls ");
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#3366CC');
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

