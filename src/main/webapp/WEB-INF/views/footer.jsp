<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<footer class="site-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-9">
          <div class="row">
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4"><spring:message code="label.shipments"/></h2>
              <ul class="list-unstyled">
                <li><a href="/politics/shipment"><spring:message code="label.shipments"/></a></li>
              </ul>
            </div>
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4"><spring:message code="label.terms"/></h2>
              <ul class="list-unstyled">
                <li><a href="/politics/terms-service"><spring:message code="label.terms"/></a></li>
              </ul>
            </div>
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4"><spring:message code="label.privacy"/></h2>
              <ul class="list-unstyled">
                <li><a href="/politics/privacy-policy"><spring:message code="label.privacy"/></a></li>
              </ul>
            </div>
            <div class="col-md-6 mb-5 mb-lg-0 col-lg-3">
              <h2 class="footer-heading mb-4"><spring:message code="label.follow"/></h2>
              <a href="https://www.facebook.com/adri.quevedogarreta.73/" class="pl-0 pr-3" target = "_blank"><span class="icon-facebook"></span></a>
              <a href="https://www.youtube.com/channel/UC-YHQVTWQ95YDhu6QKwneXg" class="pl-3 pr-3" target = "_blank"><span class="icon-youtube"></span></a>
              <a href="https://www.instagram.com/qfisioterapia/" class="pl-3 pr-3" target = "_blank"><span class="icon-instagram"></span></a>
              <a href="https://www.linkedin.com/in/adri-quevedo-garreta-8a1a63130/" class="pl-3 pr-3" target = "_blank"><span class="icon-linkedin"></span></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <h2 class="footer-heading mb-4"><spring:message code="label.newsletter"/></h2>
          <p><spring:message code="label.newslettertext"/></p>
          <form action="#" method="post" class="subscription">
            <div class="input-group mb-3  d-flex align-items-stretch">
              <c:set var="placeValue"><spring:message code="label.placeholder"/></c:set>
              <input type="text" id = "sender" class="form-control bg-transparent" placeholder="${placeValue}" aria-label="Enter Email" aria-describedby="button-addon2">
              <button class="btn btn-primary text-white" type="button" id="button-addon2" onclick="sendEmail()"><spring:message code="label.send"/></button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </footer>
  <script src = "https://smtpjs.com/v3/smtp.js"></script>
  <script type = "text/javascript">
    function getMessageByAjaxCall(label_code) {
      var result = "";
      $.ajax({
        url: '/get/message?message='+label_code,
        async: false,  
        success: function(data) {
           result = data; 
        }
     });
     return result;
    }

    function sendEmail() {
      var emailSender = document.getElementById("sender").value;
      if(emailSender === "") {
        var errorInsert = getMessageByAjaxCall('label.errorinsert');
        alert(errorInsert);
      }else {
        Email.send({
          SecureToken: "31c6e800-482c-44cd-973a-aefed66ea35e",
          To: emailSender,
          From: "sergiquev@hotmail.com",
          Subject: "Phisio web newsletter subscription!",
          Body: "Well that was easy!!",
        }).then(function (message) {
            var confirmedLetter = getMessageByAjaxCall('label.confirmedLetter');
            document.getElementById("sender").value = "";
            alert(confirmedLetter);
          });
      } 
    }
  </script>