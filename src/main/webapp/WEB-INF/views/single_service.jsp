<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title><spring:message code="label.productsof"/>${newProduct.product_type}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  

    <link href="https://fonts.googleapis.com/css?family=Rubik:400,700" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rangeslider.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    
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
      <div class="site-blocks-cover overlay" style="background-image: url(${pageContext.request.contextPath}/resources/images/Service.JPG);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-10">
              
              <div class="row justify-content-center mb-4">
                <div class="col-md-10 text-center">
                  <h1><spring:message code="label.servicetitle"/></h1>
                  <p data-aos="fade-up" data-aos-delay="100"><spring:message code="label.clienttr"/> <span class="mx-3">&bullet;</span> <spring:message code="label.clienttr2"/></p>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>  
      <div class="site-section">
        <div class="container">
          <div class="row">

            <div class="col-md-8" style="margin: 0 auto">
                <h2 style="margin-bottom: 2cm; text-align: center;">${newProduct.product_name}</h2>
                <p class="mb-4"><img src="${pageContext.request.contextPath}/resources/images/${newProduct.url_photo}" alt="Image" class="img-fluid" style="display:block; margin-left: auto; margin-right: auto; width: 50%;" width="25" height="70"></p>
                <p style="text-align: center;"><spring:message code="label.popular"/>${newProduct.product_name}:</p>
                <p style="margin-left: 100px; text-align: justify">- ${newProduct.product_desc1}</p>
                <p style="margin-left: 100px; text-align: justify">- ${newProduct.product_desc2}</p>
                <p style="margin-left: 100px; text-align: justify">- ${newProduct.product_desc3}</p>
                <p style="margin-left: 100px; text-align: justify">- ${newProduct.product_desc4}</p>
                <p style="margin-left: 100px; text-align: justify">- ${newProduct.product_desc5}</p>
                <div class="pt-5">
                    <h3 class="mb-5"><spring:message code="label.duration"/>${newProduct.product_duration} minutos</h3>
                    <h3 class="mb-5"><spring:message code="label.price"/>${newProduct.product_price}€</h3>
                </div>
            </div>
      <%@ include file = "footer.jsp" %>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/rangeslider.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
  </body>
</html>