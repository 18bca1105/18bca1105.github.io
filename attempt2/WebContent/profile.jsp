<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/table_css.css">
     <link href='https://fonts.googleapis.com/css?family=Rock+Salt' rel='stylesheet' type='text/css'>
    <title> Hdfc Bank</title>
<!--

TemplateMo 548 Training Studio

https://templatemo.com/tm-548-training-studio

-->
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">

    <link rel="stylesheet" href="css/templatemo-training-studio.css">

    </head>
    
    <body>
    
       <%  

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("email")==null)
{
	response.sendRedirect("welcome_demo.jsp");
	
	
}


%>
    
    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
      <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <div class="logo1"> <img src="images/logo.jpg" height="78" width ="200"></div>
                        <a href="index.html" class="logo">HDFC<em> Bank</em></a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="Welcome.jsp" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#features">About</a></li>
                             <li class="scroll-to-section"><a href="profile.jsp">profile</a></li> 
                            <li class="scroll-to-section"><a href="#contact-us">Contact</a></li> 
                            <li class="main-button"><a href="redirect.jsp">Log out</a></li>
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    
    <div class="main-banner" id="top">
        <video autoplay muted loop id="bg-video">
            <source src="images/credit_card_money1.mp4" type="video/mp4" />
        </video>



        <div class="video-overlay header-text">
            <div class="caption">
            
            
                
              <%



try{
	
	
	HttpSession sess=request.getSession(false);  
    int account=(int)sess.getAttribute("account_no");  
    
    
 

 

  
    
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","XE","sd");
	
	

	
	PreparedStatement st =conn.prepareStatement("select * FROM REGISTER_BANK WHERE account_no=?");
	st.setInt(1, account);
	
	
	ResultSet rs=st.executeQuery();
	
	

	
	 String sql2="select * from  transation WHERE account_no=?";
		PreparedStatement st2 =conn.prepareStatement(sql2);
		
		st2.setInt(1, account);
	
		ResultSet rs2=st2.executeQuery();
		
		
		
		
	

	


%>




<div class="tab" >


<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
 <thead>
    
     
    
  </thead>
  <tbody>
   
<%
while (rs.next()) {
%>
<TR>   <th scope="row">NAME</th>    <TD><%=rs.getString(1)%></TD></TR>
<TR>     <th scope="row">EMAIL</th>    <TD><%=rs.getString(2)%></TD></TR>
<TR>     <th scope="row">GENDER</th>    <TD><%=rs.getString(3)%></TD></TR>
<TR>    <th scope="row">CITY</th>     <TD><%=rs.getString(4)%></TD></TR>
<TR>   <th scope="row">BIRTH</th>    <TD><%=rs.getString(5)%></TD></TR>
<TR>    <th scope="row">ACCOUNT_NO</th>      <TD><%=rs.getString(8)%></TD></TR>


<% } %>



<%
while (rs2.next()) {
%>

<TR>     <th scope="row">MONEY</th>      <TD><%=rs2.getInt(3)%></TD></TR>

<% } %>
  </tbody>
 </table>
 </div>

<%
// close all the connections.
rs.close();
st.close();
conn.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
                    
                
            </div>
        </div>
    </div>

  

  
    
    <!-- ***** Contact Us Area Starts ***** -->
    <section class="section" id="contact-us">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div id="map">
                      <iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:ElRTaGl2a3V0aSBSZCwgU2hpdmt1dGksIEdvdmluZHB1ciwgVGVsaWFyZ2FuaiwgUHJheWFncmFqLCBVdHRhciBQcmFkZXNoIDIxMTAwNCwgSW5kaWEiLiosChQKEgkTY0Nkj7WaOREbWfHsAiyEqxIUChIJz2t5KY-1mjkRoa0oeGmyUts&key=AIzaSyBztimA-q_HiAmVN27aqORp2Je7Zm9C-38" width="100%" height="600px" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div class="contact-form">
                        <form id="contact" action="Welcome.jsp" method="post">
                          <div class="row">
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="name" type="text" id="name" placeholder="Your Name*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-12 col-sm-12">
                              <fieldset>
                                <input name="subject" type="text" id="subject" placeholder="Subject">
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <textarea name="message" rows="6" id="message" placeholder="Message" required=""></textarea>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <button type="submit" id="form-submit" class="main-button">Send Message</button>
                              </fieldset>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Contact Us Area Ends ***** -->
      <!-- ***** Testimonials Starts ***** -->
 
    
     <section class="section" id="contact-us">
    <div class="bottom2">
      <div class="section-heading">
                        <h2> <em> Contact:- </em></h2>
                       
                        
                    </div>
   <p> 
    For Ahmedabad / Bangalore / Chennai / Delhi and NCR / Hyderabad / Kolkata / Mumbai / Pune dial 61606161 
For Chandigarh / Cochin / Indore / Jaipur / Lucknow dial 6160616


Please prefix the STD code of the respective location. Please refer the below table for more details.</p>
</div>
    </section>
   
    <section class="section" id="features">
    <div class="bottom3">
      <div class="section-heading">
                        <h2> <em> About:- </em></h2>
                       
                        
                    </div>
   <p> HDFC Bank is one of India's leading private banks and was among the first to receive approval from the Reserve Bank of India (RBI) to set up a private sector bank in 1994.

Today, HDFC Bank has a banking network of 5,326 branches and 14,996  ATMs spread across 2,825 cities and towns.</p>
</div>
    </section>
    
    
       <section class="section" id="trainers">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2><em>Developer </em></h2>
                        <img src="images/line-dec.png"  alt="" >
                        
                    </div>
                </div>
            </div>
           
        </div>
    </section>
    <!-- ***** Testimonials Ends ***** -->
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2020 
                    
                    - Designed by <a rel="nofollow" href="#" class="tm-text-link" target="_parent">shashank</a></p>
                    
                    
                    
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="js/scrollreveal.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imgfix.min.js"></script> 
    <script src="js/mixitup.js"></script> 
    <script src="js/accordions.js"></script>
    
    <!-- Global Init -->
    <script src="js/custom.js"></script>

  </body>
</html>