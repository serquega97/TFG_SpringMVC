<%@ page contentType="text/html; charset=UTF-8" %>
<footer class="site-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-9">
          <div class="row">
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4">Envíos</h2>
              <ul class="list-unstyled">
                <li><a href="/politics/shipment">Envíos</a></li>
              </ul>
            </div>
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4">Términos de servicio</h2>
              <ul class="list-unstyled">
                <li><a href="/politics/terms-service">Términos de servicio</a></li>
              </ul>
            </div>
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4">Política privacidad</h2>
              <ul class="list-unstyled">
                <li><a href="/politics/privacy-policy">Política de privacidad</a></li>
              </ul>
            </div>
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4">Síguenos</h2>
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
              <button class="btn btn-primary text-white" type="button" id="button-addon2" onclick="sendEmail()">Send</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </footer>
  <script src = "https://smtpjs.com/v3/smtp.js"></script>
  <script type = "text/javascript">
    function sendEmail() {
      var emailSender = document.getElementById("sender").value;
      if(emailSender === "") {
        alert("Has de insertar un email!");
      }else {
        Email.send({
          SecureToken: "31c6e800-482c-44cd-973a-aefed66ea35e",
          To: emailSender,
          From: "sergiquev@hotmail.com",
          Subject: "Phisio web newsletter subscription!",
          Body: "Well that was easy!!",
        }).then(function (message) {
            document.getElementById("sender").value = "";
            alert("Has sido suscrit@ a nuestra newsletter!");
          });
      } 
    }
  </script>