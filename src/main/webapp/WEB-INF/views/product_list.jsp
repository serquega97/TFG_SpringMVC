<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="en">
    <head>
        <title><spring:message code="label.list"/></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
    
        <link href="https://fonts.googleapis.com/css?family=Rubik:400,700" rel="stylesheet">
        <link rel="stylesheet"  href="https://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
    
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
    
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/flaticon/font/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rangeslider.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
      <div class="site-blocks-cover overlay" style="background-image: url(${pageContext.request.contextPath}/resources/images/Portada.JPG);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
  
            <div class="col-md-10">
              
              <div class="row justify-content-center mb-4">
                <div class="col-md-10 text-center">
                  
                  <h1 data-aos="fade-up" class="mb-5"><spring:message code="label.solution"/><span class="typed-words"></span></h1>
  
                  <p data-aos="fade-up" data-aos-delay="100"><a href="/book/calendar?curr=${sessionScope.curr}&lang=${sessionScope.lang}" class="btn btn-primary btn-pill"><spring:message code="label.appointment"/></a></p>
                </div>
              </div>
  
            </div>
          </div>
        </div>
      </div>  
      <div class="site-section block-services-1">
        <div class="container">
          <div class="row mb-5">
            <div class="col-md-12 text-center">
              <h2 class="site-section-heading text-center font-secondary text-black"><spring:message code="label.nuestrospr"/></h2>
            </div>
          </div>
            <div class="row">
                <c:forEach items="${productList}" var="product">
                    <div class="col-sm-4">
                        <div class="block-service-1-card">
                            <a href="/products/id/${product.id}?curr=${sessionScope.curr}&lang=${sessionScope.lang}" class="thumbnail-link d-block mb-4"><img src="${pageContext.request.contextPath}/resources/images/${product.url_photo}" alt="Image" class="img-fluid" height="300px" width="100px"></a>
                            <h3 class="block-service-1-heading mb-3"><a>${product.product_name}</a></h3>
                            <div class="block-service-1-excerpt"><p>${product.product_desc2}</p></div>
                            <p><a href="/products/id/${product.id}?curr=${sessionScope.curr}&lang=${sessionScope.lang}" class="d-inline-flex align-items-center block-service-1-more"><span><spring:message code="label.more"/></span> <span class="icon-keyboard_arrow_right icon"></span></a></p>
                        </div>
                    </div>
                </c:forEach>
                <br/>
                <br/>
                <br/>
                <br/>
            </div>
          </div>
        </div>
      </div>
      <%@ include file = "footer.jsp" %>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
    <script src="https://code.jquery.com/ui/1.10.2/jquery-ui.min.js"></script>
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
    <script src="${pageContext.request.contextPath}/resources/js/typed.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/fetch-functions.js"></script>
    <script>
      var pain = getMessageByAjaxCall("label.pain");
      var stress = getMessageByAjaxCall("label.stress");
      var fatigue = getMessageByAjaxCall("label.fatigue");
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
  </body>
</html>