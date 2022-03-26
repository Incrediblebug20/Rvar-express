<footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-7">
                <?php
$query=mysqli_query($con,"select * from tblpage where PageType='aboutus'");
while ($row=mysqli_fetch_array($query)) {

?>
                <h2><?php echo $row['PageTitle'];?></h2>
                <p style="color:#fff"><?php echo $row['PageDescription'];?>.</p>
              </div><?php } ?>
              <div class="col-md-4 ml-auto">
                <h2 class="footer-heading mb-4">Features</h2>
                <ul class="list-unstyled">
                  <li><a href="#about-section">About Us</a></li>
                  <li><a href="#contact-section">Contact Us</a></li>
                  <li><a href="#branch-section">Branch</a></li>
                  <li><a href="raise-complaint.php">Raise Ticket</a></li>
                  <li><a href="staff/index.php">Employee</a></li>
                  <li><a href="admin/index.php">Admin</a></li>
                </ul>
              </div>

            </div>
          </div>
          <div class="col-md-4 ml-auto">

            <img src="images/cargo_delivery_big.jpg" alt="Image" class="img-fluid">


            <h2 class="footer-heading mb-4" style="padding-top: 20px">Follow Us</h2>
            <a href="#about-section" class="smoothscroll pl-0 pr-3"><span class="icon-facebook"></span></a>
            <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
            <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
            <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
            </form>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
              <p class="copyright">
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> Courier Management System <i class="icon-heart text-danger" aria-hidden="true"></i>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>

        </div>
      </div>
    </footer>