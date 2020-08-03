<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/redirect.css">
</head>
<body>




<%  



response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");



%>



<div class="whole"   style="height: 650px;
        width:99%; ">
<div class="image" ><img src="images/bye.jpg" height="400" width="500" ></div>


<div class="text" style="height: 270px;
        width:99%;    position: absolute;  bottom:10px; ">
        
 <p style="text-align:center; font-size: 20px;border: 0px ;"><br>Thanks for using HDFC bank portal<br><br><br>
               you have been redirected to login  page in </p>   
               
    <div class="timer">
               
<p id="demo" style="text-align:center;font-size: 40px;   position: absolute;  bottom:10px;left:650px;"></p>

<script>


  var distance =5;

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time

    
  // Find the distance between now and the count down date

    
  // Time calculations for days, hours, minutes and seconds

  while((distance  >=0))
   {
      
    
  

  var seconds = Math.floor(distance );
  distance=distance-1;
   
      
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML = seconds + "s ";
   thread.sleep(1000);
  }
    
  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
 
    document.getElementById("demo").innerHTML = "EXPIRED";
    
    close();
  }  
}, 1000);

</script>


   </div>              
               
 </div>              
</div>
<meta http-equiv="Refresh" content="6;logout">
</body>
</html>