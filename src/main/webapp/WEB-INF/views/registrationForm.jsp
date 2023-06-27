<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
  <head>
    <title><spring:message code="label.register"/></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rubik:400,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.min.css">
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
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
      <div class="site-blocks-cover overlay" style="background-image: url(${pageContext.request.contextPath}/resources/images/User.png);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-10">
              <div class="row justify-content-center mb-4">
                <div class="col-md-10 text-center">
                  <h1><spring:message code="label.pageform"/></h1>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>  
      <div class="site-section">
        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
              <div class="row justify-content-center align-items-center h-100">
                <div class="col-12 col-lg-9 col-xl-7">
                  <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                    <div class="card-body p-4 p-md-5">
                      <h3 class="mb-4 pb-2 pb-md-0 mb-md-5"><spring:message code="label.registrationform"/></h3>
                      <form class="needs-validation" action="/users/signin.html" method="post" novalidate>
                        <div class="row">
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <label class="form-label" for="firstNameR"><spring:message code="label.name"/></label>
                                <input type="text" id="firstNameR" name="firstNameR" class="form-control form-control-lg" required/>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <label class="form-label" for="lastName1"><spring:message code="label.lastname1"/></label>
                                <input type="text" id="lastName1" name="lastName1" class="form-control form-control-lg" required/>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-4">
                              <div class="form-outline">
                                  <label class="form-label" for="lastName2"><spring:message code="label.lastname2"/></label>
                                  <input type="text" id="lastName2" name="lastName2" class="form-control form-control-lg" required/>
                                  <div class="valid-feedback">Valid.</div>
                                  <div class="invalid-feedback">Please fill out this field.</div>
                              </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                                <div class="form-outline">
                                    <label class="form-label" for="phone"><spring:message code="label.phone"/></label>
                                    <input type="phone" id="phone" name="phone" class="form-control form-control-lg" required/>
                                    <div class="valid-feedback">Valid.</div>
                                    <div class="invalid-feedback">Please fill out this field.</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-4 pb-2">
                              <div class="form-outline">
                                  <label class="form-label" for="username"><spring:message code="label.username"/></label>
                                  <input type="text" id="username" name="username" class="form-control form-control-lg" required/>
                                  <div class="valid-feedback">Valid.</div>
                                  <div class="invalid-feedback">Please fill out this field.</div>
                              </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                              <div class="form-outline">
                                  <label class="form-label" for="password"><spring:message code="label.password"/></label>
                                  <input type="password" id="password" name="password" class="form-control form-control-lg" required/>
                                  <div class="valid-feedback">Valid.</div>
                                  <div class="invalid-feedback">Please fill out this field.</div>
                              </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-4 pb-2">
                              <div class="form-outline">
                                <label class="form-label" for="emailAddress"><spring:message code="label.email"/></label>
                                <input type="email" id="emailAddress" name="email" class="form-control form-control-lg" required/>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                              </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                              <div class="form-outline">
                                <label class="form-label" for="confirmEmail"><spring:message code="label.emailconfirm"/></label>
                                <input type="email" id="confirmEmail" name="confirmEmail" class="form-control form-control-lg" required/>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                              </div>
                            </div>
                        </div>
                        <div class="row">
                          <div class="col-md-6 mb-4 d-flex align-items-center">
                            <div class="form-outline w-100">
                                <label for="birthdayDate" class="form-label"><spring:message code="label.birthdate"/></label>
                                <input type="date" class="form-control form-control-lg" id="birthdayDate" name="birthDate"/>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <h6 class="mb-2 pb-1"><spring:message code="label.gender"/></h6>
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" type="radio" name="gender" id="femaleGender" value="Female" checked/>
                              <label class="form-check-label" for="femaleGender"><spring:message code="label.genderfemale"/></label>
                            </div>
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" type="radio" name="gender" id="maleGender" value="Male"/>
                              <label class="form-check-label" for="maleGender"><spring:message code="label.gendermale"/></label>
                            </div>
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" type="radio" name="gender" id="otherGender" value="Other"/>
                              <label class="form-check-label" for="otherGender"><spring:message code="label.genderother"/></label>
                            </div>
                          </div>
                        </div>
                        <div class="text-center mt-4 pt-2">
                          <input class="btn btn-primary" type="submit" value="Submit" />
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
      </div>  
      <%@ include file = "footer.jsp" %>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
    <script src="https://code.jquery.com/ui/1.10.2/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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
    <script src="${pageContext.request.contextPath}/resources/js/fetch-functions.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/typed.js"></script>
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';
        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');
          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if(form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
  </body>
</html>