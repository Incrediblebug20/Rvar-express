 <div class="top-bar">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <?php
$query=mysqli_query($con,"select * from tblpage where PageType='contactus'");
while ($row=mysqli_fetch_array($query)) {

?>
              

<?php } ?>
          

            </div>

          </div>

        </div>
      </div>
            <header class="site-navbar js-sticky-header site-navbar-target" role="banner">

        <div class="container">
          <div class="row align-items-center position-relative">


            <div class="site-logo">
              <h1 href="index.php" class="text-black"> <b><span style="color:#474A8A" class="text-primary">RVAR Express</h1></b>
            </div>

            <div class="col-12">
              <nav class="site-navigation text-right ml-auto " role="navigation">

                <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
                  <li><a href="index.php" class="nav-link">Home</a></li>
				  <li><a href="Products.php" class="nav-link">Products</a></li>
                 <li><a href="pricing.php" class="nav-link">pricing</a></li>
				<li><a href="Tracking.php" class="nav-link">Tracking</a></li>
				<li><a href="Support.php" class="nav-link">Support</a></li>
				<li><a href="admin/index.php" class="nav-link">Admin Login</a></li>
				<li><a href="staff/index.php" class="nav-link">Employee</a></li>
                  
            
                </ul>
              </nav>

            </div>

            <div class="toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

          </div>
        </div>

      </header>