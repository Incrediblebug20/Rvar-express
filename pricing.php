<?php
include('includes/dbconnection.php');
session_start();
error_reporting(0);
    if(isset($_POST['submit']))
  {

	$name=$_POST['name'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];
    $message=$_POST['message'];
 $query=mysqli_query($con,"insert into tblcontact(Name,MobileNumber,Email,Message) value('$name','$phone','$email','$message')");

    if ($query) {
    echo "<script>alert('Your message was sent successfully!.');</script>";
echo "<script>window.location.href ='index.php'</script>";
  }
  else
    {
       echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }

  
}

?>

<!doctype html>
<html lang="en">

  <head>
    <title>Courier Management System|| Home Page</title>
   
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,700|Oswald:400,700" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/aos.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">

  </head>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border text-primary" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>

    <div class="site-wrap" id="home-section">

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>


 <?php include_once('includes/header.php');?> 
 
 <?php
        
	if(isset($_POST['button']))
	{
		$source=$_POST['source'];
		$destination=md5($_POST['destination']);
		
		if($source == '' || $destination== '')
		{
			echo "<h2>Invalid Details.</h2>";			
		}
		else
		{
			header('location:pricecal.php');
			
		}
  }
  ?>
  
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
       <style type="text/css">
            .formbg { background-color: #66CCFF; padding: 10px 0 10px 20px; color: #191919;
                    border-radius: 10px;  border: 2px solid #6D0839; width: 780px; margin: 0 auto;
            }
	   label { font-size: 18px; }
	   h1 {color: #003366;}
       </style>
	   
          <form action="" method="post">
             <div class="form-group row">
                <label class="col-xs-3 col-form-label">Source Address: </label>
                <div class="col-xs-5">
                 <input class="form-control" type="text" name="source" value="" placeholder="Source">
                </div>
             </div>
             <div class="form-group row">
                <label class="col-xs-3 col-form-label">Destination Address: </label>
                <div class="col-sm-5">
                 <input class="form-control" type="text" name="destination" value="" placeholder="Destination">
                </div>
              </div>
             <div class="form-group row">
                 <label class="col-xs-3 col-form-label"> </label>
                  <div class="col-sm-5">
                   <input type="submit" name="button" class="button" value="calculate" />
                  </div>
                </div>
          </form>
    
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/aos.js"></script>

    <script src="js/main.js"></script>

  </body>
</html>