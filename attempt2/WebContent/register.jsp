
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>


    <div class="main">
<div class="mass">
<img src="images/logo.jpg" height="40" width ="260">
</div>
<div class="mass2">
<img src="images/man-woman-laptop-coffee.jpg" height="40" width ="300">
</div>

        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/signup-img.jpg" alt="">
                </div>
                <div class="signup-form">
                    <form action="register" method="post" class="register-form" id="register-form"  >
                        <h1>&nbsp&nbsp Registration form</h1>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Name :</label>
                                <input type="text" name="sname" id="name" required/>
                            </div>
                            <div class="form-group">
                                <label for="father_name">Father Name :</label>
                                <input type="text" name="father_name" id="father_name" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address">Address :</label>
                            <input type="text" name="address" id="address" required/>
                        </div>
                        <div class="form-radio">
                            <label for="gender" class="radio-label">Gender :</label>
                            <div class="form-radio-item">
                                <input type="radio" name="smale" id="male" value="male" checked>
                                <label for="male">Male</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="smale" id="female" value="female">
                                <label for="female">Female</label>
                                <span class="check"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">State :</label>
                                <div class="form-select">
                                    <select name="state" id="state">
                                        <option value=""></option>
                                        <option value="Uttar pradesh">Uttar pradesh</option>
                                        
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="city">City :</label>
                                <div class="form-select">
                                    <select name="city" id="city">
                                        <option value=""></option>
                                        <option value="Prayagraj">Prayagraj</option>
                                        <option value="Lucknow">Lucknow</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                        </div>


                          <div class="form-row">
                             <div class="form-group"><label for="pincode">Pincode :</label>
                             <div class="form-select">
                            <input type="text" name="pincode" id="pincode">
                        </div>
                        </div>                    






                        <div class="form-group">
                            <label for="birth_date">DOB :</label>
                          <div class="form-select">
                            <input type="date" name="birth_date" id="birth_date" min="1995-08-15" max="2013-08-26"  value="14/01/2017">
                        </div>
                        </div>
                             </div>
                        




                        <div class="form-row">
                        <div class="form-group">
                            <label for="pincode">Password :</label>
                             <div class="form-select">
                            <input type="password" name="pass" id="pincode" required/>
                        </div>
                        </div>
                  
                           <div class="form-group"><label for="pincode">Confirm Password :</label>
                             <div class="form-select">
                            <input type="password" name="cnrfmpass" id="pincode" required/>
                        </div>
                        
                        </div>
                             </div>








                        <div class="form-group">
                            <label for="course">Account type :</label>
                            <div class="form-select">
                                <select name="course" id="course">
                                    <option value=""></option>
                                    <option value="Saving">Saving</option>
                                    <option value="Current">Current</option>
                                    
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email ID :</label>
                            <input type="email" name="smail" id="email" required/>
                        </div>
                        <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>