<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
  <head>
    <title>Phisioweb Main</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  

    <link href="https://fonts.googleapis.com/css?family=Rubik:400,700" rel="stylesheet">

    <link rel="stylesheet" href="resources/fonts/icomoon/style.css">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css">
    <link rel="stylesheet" href="resources/css/jquery-ui.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="resources/css/aos.css">
    <link rel="stylesheet" href="resources/css/rangeslider.css">

    <link rel="stylesheet" href="resources/css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <%@ include file = "navbar.jsp" %>

    <div class="site-blocks-cover overlay" style="background-image: url(resources/images/Portada.JPG);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10">
            
            <div class="row justify-content-center mb-4">
              <div class="col-md-10 text-center">
                <c:set var="pain"><spring:message code="label.pain"/></c:set>
                <input id="pain" type="hidden" value="${pain}">
                <c:set var="stress"><spring:message code="label.stress"/></c:set>
                <input id="stress" type="hidden" value="${stress}">
                <c:set var="fatigue"><spring:message code="label.fatigue"/></c:set>
                <input id="fatigue" type="hidden" value="${fatigue}">
                <h1 data-aos="fade-up" class="mb-5"><spring:message code="label.solution"/><span class="typed-words"></span></h1>

                <p data-aos="fade-up" data-aos-delay="100"><a href="/book/calendar?lang=${sessionScope.lang}" class="btn btn-primary btn-pill"><spring:message code="label.appointment"/></a></p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>  



    <div class="block-quick-info-2">
      <div class="container">
        <div class="block-quick-info-2-inner">
          <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-3 mb-3 mb-lg-0">
              <div class="d-flex quick-info-2">
                <span class="icon icon-home mr-3"></span>
                <div class="text">
                  <strong class="d-block heading"><spring:message code="label.visit"/></strong>
                  <span class="excerpt">2875  Beechwood Drive</span>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-3 mb-3 mb-lg-0">
              <div class="d-flex quick-info-2">
                <span class="icon icon-phone mr-3"></span>
                <div class="text">
                  <strong class="d-block heading"><spring:message code="label.call"/></strong>
                  <span class="excerpt"><a>+(34) 606 255 384</a></span>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-3 mb-3 mb-lg-0">
              <div class="d-flex quick-info-2">
                <span class="icon icon-envelope mr-3"></span>
                <div class="text">
                  <strong class="d-block heading"><spring:message code="label.message"/></strong>
                  <span class="excerpt"><a>infofisio@gmail.com</a></span>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-3 mb-3 mb-lg-0">
              <div class="d-flex quick-info-2">
                <span class="icon icon-clock-o mr-3"></span>
                <div class="text">
                  <strong class="d-block heading"><spring:message code="label.opening"/></strong>
                  <span class="excerpt"><spring:message code="label.monday"/><br/></span>
                  <span class="excerpt" style="margin-left: 62px;">16h-20h<br/></span>
                  <span class="excerpt"><spring:message code="label.saturday"/></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="block-services-1 py-5">
      <div class="container">
        <div class="row">
          <div class="mb-4 mb-lg-0 col-sm-6 col-md-6 col-lg-3">
            <h3 class="mb-3"><spring:message code="label.offer"/></h3>
            <p><spring:message code="label.text1"/></p>
            <p><a href="/products/service/all" class="d-inline-flex align-items-center block-service-1-more"><span><spring:message code="label.allserv"/></span> <span class="icon-keyboard_arrow_right icon"></span></a></p>
          </div>
          <div class="mb-4 mb-lg-0 col-sm-6 col-md-6 col-lg-3">
            <div class="block-service-1-card">
              <a href="/products/service/Puncion" class="thumbnail-link d-block mb-4"><img src="resources/images/PuncioSeca.JPG" alt="Image" class="img-fluid"></a>
              <h3 class="block-service-1-heading mb-3"><a href="/products/service/Puncion"><spring:message code="label.puncion"/></a></h3>
              <div class="block-service-1-excerpt"><p><spring:message code="label.text2"/></p></div>
              <p><a href="/products/service/Puncion" class="d-inline-flex align-items-center block-service-1-more"><span><spring:message code="label.more"/></span> <span class="icon-keyboard_arrow_right icon"></span></a></p>
            </div>
          </div>
          <div class="mb-4 mb-lg-0 col-sm-6 col-md-6 col-lg-3">
            <div class="block-service-1-card">
              <a href="/products/service/Readaptacion" class="thumbnail-link d-block mb-4"><img src="resources/images/ReadaptacioEsportiva.JPG" alt="Image" class="img-fluid"></a>
              <h3 class="block-service-1-heading mb-3"><a href="/products/service/Readaptacion"><spring:message code="label.rehabilitation"/></a></h3>
              <div class="block-service-1-excerpt"><p><spring:message code="label.text3"/></p></div>
              <p><a href="/products/service/Readaptacion" class="d-inline-flex align-items-center block-service-1-more"><span><spring:message code="label.more"/></span> <span class="icon-keyboard_arrow_right icon"></span></a></p>
            </div>
          </div>
          <div class="mb-4 mb-lg-0 col-sm-6 col-md-6 col-lg-3">
            <div class="block-service-1-card">
              <a href="/products/service/Kinesio" class="thumbnail-link d-block mb-4"><img src="resources/images/VendatgeNeuromuscular.JPG" alt="Image" class="img-fluid"></a>
              <h3 class="block-service-1-heading mb-3"><a href="/products/service/Kinesio"><spring:message code="label.kinesio"/></a></h3>
              <div class="block-service-1-excerpt"><p><spring:message code="label.text4"/></p></div>
              <p><a href="/products/service/Kinesio" class="d-inline-flex align-items-center block-service-1-more"><span><spring:message code="label.more"/></span> <span class="icon-keyboard_arrow_right icon"></span></a></p>
            </div>
          </div>
        </div>
      </div>
    </div>    
    <%@ include file = "footer.jsp" %>   
  </div>
  <script src="resources/js/jquery-3.3.1.min.js"></script>
  <script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
  <script src="resources/js/popper.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/owl.carousel.min.js"></script>
  <script src="resources/js/jquery.stellar.min.js"></script>
  <script src="resources/js/jquery.countdown.min.js"></script>
  <script src="resources/js/jquery.magnific-popup.min.js"></script>
  <script src="resources/js/jquery.animateNumber.min.js"></script>
  <script src="resources/js/jquery.waypoints.min.js"></script>

  <script src="resources/js/bootstrap-datepicker.min.js"></script>
  <script src="resources/js/aos.js"></script>
  <script src="resources/js/rangeslider.min.js"></script>
  

  <script src="resources/js/typed.js"></script>
            <script>
            var pain = document.getElementById("pain").value;
            var stress = document.getElementById("stress").value;
            var fatigue = document.getElementById("fatigue").value;
            var typed = new Typed('.typed-words', {
            strings: [pain, stress, fatigue],
            typeSpeed: 80,
            backSpeed: 80,
            backDelay: 4000,
            startDelay: 1000,
            loop: true,
            showCursor: true
            });
            </script>

  <script src="resources/js/main.js"></script>
  
  </body>
</html>