<title>Insert Data</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String hotelname=null;     
        			String area=null;	
					String location=null;
					String rooms=null;
					String rent=null;
					String distance=null;
					String dfrom=null;
					String phone=null;
					String img=null;
				
					FileInputStream fs=null;
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("hname"))
							{
								hotelname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("area"))
							{
								area=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("loc"))
							{
								location=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("rooms"))
							{
								rooms=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("rent"))
							{
								rent=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("phone"))
							{
								phone=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("img"))
							{
								image=multi.getParameter(paramname);
							}
													
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1)
								 {
									if (i != -1) 
									{
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
						 
						 SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			
						Date now = new Date();
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt=strDate+ " "+strTime;
						 
			 			 String sql="select id from hotels where (hotelname='"+hotelname+"' and area='"+area+"' and location='"+location+"')";
						 Statement st=connection.createStatement();
						 ResultSet rs=st.executeQuery(sql);
						 if(rs.next())
						 {
						 	int i=rs.getInt(1);
						
						
						String query1="select * from roomdetails  where hotel_id="+i+""; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						if ( rs1.next() )
						   {
					   		
							String msg="Room Details Already Uploded";
							application.setAttribute("msg",msg);
							response.sendRedirect("a_addroomdetails.jsp");
					   }
					   else
					   {
							PreparedStatement ps=connection.prepareStatement("insert into roomdetails(hotel_id,rooms,price,phone,image,dt,rooms_avialable) values(?,?,?,?,?,?,?)");
					
						ps.setInt(1,i);
						ps.setInt(2,Integer.parseInt(rooms));
						ps.setString(3,rent);
						ps.setString(4,phone);
						ps.setBinaryStream(5, (InputStream)fs, (int)(file1.length()));	
						ps.setString(6,dt);
						ps.setInt(7,Integer.parseInt(rooms));

						
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
							String msg="Hotel Details added Successfully";
							application.setAttribute("msg",msg);
							response.sendRedirect("a_addfooditems.jsp");
				
					   }
			 		  }
					}
					else
					{
						String msg="Hotel Not Found In Specified Address";
						application.setAttribute("msg",msg);
						response.sendRedirect("a_addroomdetails.jsp");
					}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
