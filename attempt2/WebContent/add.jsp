

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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

       

   
         <form action="money_add"  method="post"> 
    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner" id="top">
    
    
    
    
    
        <video autoplay muted loop id="bg-video">
            <source src="images/credit_card_money1.mp4" type="video/mp4" />
        </video>




        <div class="video-overlay header-text">
       
        
          
        
            <div class="caption">
            
             <div class="money"><h5 > Amount=  ${ money  } rs </h5></div>
            <div class="acc"><h5 > Account No=  ${ account_no } </h5></div>
                
                 <h6>Welcome</h6>
                <h4><em>${ email } </em> </h4>
           
                
                
             
                 <div class="input_bar">
  
               <div class="col-xs-3">
        
                       <input  type="text" class="form-control"  name="money_ad" required/>
                       <div class="fit"><h6 id="rs">Rs</h6></div>
                    </div>
     
            </div>
  
           </div>
            
                <div class="main-button scroll-to-section position3">
                    
                     <button type="submit" class=" btn-info btn-lg">Add money</button>
                    
                    
                </div>
               
            </div>
        </div>
   
 </form>

  

    
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
                        <form id="contact" action="" method="post">
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
    For Ahmedabad / Bangalore / Chennai / Delhi & NCR / Hyderabad / Kolkata / Mumbai / Pune dial 61606161 
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