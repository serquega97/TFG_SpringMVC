<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Productos de ${newProduct.product_type}</title>
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
      <div class="site-blocks-cover overlay" style="background-image: url(images/hero_bg_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-10">
              
              <div class="row justify-content-center mb-4">
                <div class="col-md-10 text-center">
                  <h1>World's Best School</h1>
                  <p data-aos="fade-up" data-aos-delay="100">Posted by Admin <span class="mx-3">&bullet;</span> Aug 30th, 2019</p>
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
              <h2 style="margin-bottom: 2cm;">${newProduct.product_name}</h2>
              <p class="mb-4"><img src="${pageContext.request.contextPath}/resources/images/${newProduct.url_photo}" alt="Image" class="img-fluid" style="display:block; margin-left: auto; margin-right: auto; width: 50%;" width="25" height="70"></p>
              <p>Características más populares de ${newProduct.product_name}:</p>
              <p style="margin-left: 100px;">- ${newProduct.product_desc1}</p>
              <p style="margin-left: 100px;">- ${newProduct.product_desc2}</p>
              <p style="margin-left: 100px;">- ${newProduct.product_desc3}</p>
              <p style="margin-left: 100px;">- ${newProduct.product_desc4}</p>
              <p style="margin-left: 100px;">- ${newProduct.product_desc5}</p>
              <c:if test = "${newProduct.product_type == 'Servicio'}">
                <div class="pt-5">
                  <h3 class="mb-5">Duración: ${newProduct.product_duration} minutos</h3>
                  <h3 class="mb-5">Precio: ${newProduct.product_price}€</h3>
                </div>
              </c:if>
              <c:if test = "${newProduct.product_type != 'Servicio'}">
                <div class="pt-5">
                  <h3 class="mb-5">Peso: ${newProduct.product_weight}€</h3>
                  <h3 class="mb-5" id = "funds">Precio: ${newProduct.product_price}€</h3>
                  <div id="paypal-button-container"></div>
                </div>
              </c:if>
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
    <script src="https://www.paypal.com/sdk/js?client-id=AY9KqyYgdsVGFZFdiBMtd5V9DFuuA5RHpQzRJq3utE4sSb3a564Z50jztvVZgc3hQdQhQTVS7wWOOyOE&currency=EUR"></script>
    <script>
      var funds = document.getElementById("funds");
      paypal.Buttons({
        style: {
          layout: 'horizontal',
          color: 'gold',
          shape: 'pill'
        },
        createOrder: function(data, actions) {
          // This function sets up the details of the transaction, including the amount and line item details.
          return actions.order.create({
            purchase_units: [{
              amount: {
                value: funds
              }
            }]
          });
        },
        onApprove: function(data, actions) {
          // This function captures the funds from the transaction.
          return actions.order.capture().then(function(details) {
            // This function shows a transaction success message to your buyer.
            alert('Transaction completed by ' + details.payer.name.given_name);
            //Call your server to save the transaction
            return fetch('/api/paypal-transaction-complete', {
                method: 'post',
                headers: {
                     'content-type': 'application/json'
                },
                 body: JSON.stringify({
                    orderID: data.orderID
               })
            });
          });
        }
      }).render('#paypal-button-container');
    </script>
  </body>
</html>