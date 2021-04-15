<%@ page contentType="text/html; charset=UTF-8" %>
<footer class="site-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-9">
          <div class="row">
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4">Quick Links</h2>
              <ul class="list-unstyled">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Testimonials</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4">Products</h2>
              <ul class="list-unstyled">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Testimonials</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4">Features</h2>
              <ul class="list-unstyled">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Testimonials</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4">Follow Us</h2>
              <a href="https://www.facebook.com/adri.quevedogarreta.73/" class="pl-0 pr-3" target = "_blank"><span class="icon-facebook"></span></a>
              <a href="https://www.youtube.com/channel/UC-YHQVTWQ95YDhu6QKwneXg" class="pl-3 pr-3" target = "_blank"><span class="icon-youtube"></span></a>
              <a href="https://www.instagram.com/qfisioterapia/" class="pl-3 pr-3" target = "_blank"><span class="icon-instagram"></span></a>
              <a href="https://www.linkedin.com/in/adri-quevedo-garreta-8a1a63130/" class="pl-3 pr-3" target = "_blank"><span class="icon-linkedin"></span></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <h2 class="footer-heading mb-4">Subscríbete a nuestra newsletter!</h2>
          <p>Quieres recibir las últimas novedades sobre nuestros productos? Suscríbete a nuestra newsletter!</p>
          <form action="#" method="post" class="subscription">
            <div class="input-group mb-3  d-flex align-items-stretch">
              <input type="text" id = "sender" class="form-control bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
              <button class="btn btn-primary text-white" type="button" id="button-addon2" onclick="sendEmail();">Send</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </footer>
  <script src = "https://smtpjs.com/v3/smtp.js"></script>
  <script type = "text/javascript">
    /*function sendEmail() {
      let emailSender = document.getElementById("sender").value;
      if(emailSender === "") {
        alert("has de insertar un email!");
      }else {
        Email.send({
          Host: "smtp-mail.outlook.com",
          //Host: "smtp.gmail.com",
          Username: "sergiquev@hotmail.com",
          Password: "650599446Sergi",
          To: emailSender,
          From: "sergiquev@hotmail.com",
          Subject: "Phisio web newsletter subscription!",
          Body: "Well that was easy!!",
        }).then(function (message) {
            alert(emailSender);
          });
      } 
    }*/
  </script>