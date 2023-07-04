<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rubik:400,700">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.min.css">
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
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
    </head>
    <body>
      <header class="site-navbar" role="banner">
        <nav class="site-navigation" role="navigation">
          <div class="container" style="position: relative; top: 15px; margin-left: 1px">
            <ul class="site-menu">
              <li class="has-children">
                <a><span><i class="fa fa-language" style="margin-right: 6px;"></i><spring:message code="label.language"/></span></a>
                <ul class="dropdown arrow-top">
                  <li><a href="/home?curr=${sessionScope.curr}&lang=en" class="dropdown-item"><img src="${pageContext.request.contextPath}/resources/flags/en.png" class="rev-slidebg" alt="" height="12px;" style="margin-right: 6px;"><spring:message code="label.english"/></a></li>
                  <li><a href="/home?curr=${sessionScope.curr}&lang=es" class="dropdown-item"><img src="${pageContext.request.contextPath}/resources/flags/es.png" class="rev-slidebg" alt="" height="12px;" style="margin-right: 6px;"><spring:message code="label.spanish"/></a></li>
                  <li><a href="/home?curr=${sessionScope.curr}&lang=fr" class="dropdown-item"><img src="${pageContext.request.contextPath}/resources/flags/fr.png" class="rev-slidebg" alt="" height="12px;" style="margin-right: 6px;"><spring:message code="label.french"/></a></li>
                </ul>
              </li>
              <li class="has-children">
                <a><span><i class="fa fa-money" style="margin-right: 6px;"></i><spring:message code="label.currency"/></span></a>
                <ul class="dropdown arrow-top">
                  <li><a href="/home?curr=eur&lang=${sessionScope.lang}" class="dropdown-item"><i class="fa fa-euro" style="margin-right: 6px;"></i>Euro</a></li>
                  <li><a href="/home?curr=dol&lang=${sessionScope.lang}" class="dropdown-item"><i class="fa fa-dollar" style="margin-right: 6px;"></i>Dollars</a></li>
                  <li><a href="/home?curr=gbp&lang=${sessionScope.lang}" class="dropdown-item"><i class="fa fa-gbp" style="margin-right: 6px;"></i>Pounds</a></li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="container" style="position: absolute; top: 15px; margin-left: 280px;">
            <div class="form-group col-12 col-md-8 d-none d-xl-block">
              <form class="form-inline d-flex justify-content-center active-pink active-pink-2 mt-2" action="/products/name?lang=${sessionScope.lang}" style="margin-left: 60px; position: absolute;">
                <c:set var="searchValue"><spring:message code="label.search"/></c:set>  
                <i class="fa fa-search"></i>
                <input class="form-control form-control-sm ml-3 .active-pink-2" id="searchBox" name="searchBox" type="text" oninput="autocompleteProducts()" size="35" style="background: transparent; color:#f48fb1 !important;" placeholder="${searchValue}" aria-label="Search">
              </form>
            </div>
          </div>
          <div class="container" style="position: absolute; top: 15px; margin-left: 660px;">
            <ul class="site-menu">
              <li class="active"><a href="/home?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><span><spring:message code="label.home"/></span></a></li>
              <li class="has-children">
                <a><span id="servicios"><spring:message code="label.service"/></span></a>
                <ul class="dropdown arrow-top">
                  <li><a href="/treatments/webname/Puncion?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.puncion"/></a></li>
                  <li><a href="/treatments/webname/Readaptacion?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.rehabilitation"/></a></li>
                  <li><a href="/treatments/webname/Electroterapia?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.electrotherapy"/></a></li>
                  <li><a href="/treatments/webname/Masoterapia?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.masotherapy"/></a></li>
                  <li><a href="/treatments/webname/Kinesio?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.kinesio"/></a></li>
                </ul>
              </li>
              <li class="has-children">
                  <a><span><spring:message code="label.products"/></span></a>
                  <ul class="dropdown arrow-top">
                    <li><a href="/products/all?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.all"/></a></li>
                    <li><a href="/products/type/Electroterapia?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.electrotherapy"/></a></li>
                    <li><a href="/products/type/Termoterapia?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.thermotherapy"/></a></li>
                    <li><a href="/products/type/Crioterapia?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.cryotherapy"/></a></li>
                    <li><a href="/products/type/Magnetoterapia?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.magnetotherapy"/></a></li>
                    <li><a href="/products/type/Aceite?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.oils"/></a></li>
                    <li><a href="/products/type/Kinesiotape?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.kinesio"/></a></li>
                    <li><a href="/products/type/Masaje?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><spring:message code="label.massage"/></a></li>
                  </ul>
                </li>
              <li><a href="https://www.qcuidate.com" target = "_blank"><span>Blog</span></a></li>
              <li><a href="/book/calendar?curr=${sessionScope.curr}&lang=${sessionScope.lang}"><span><spring:message code="label.appointments"/></span></a></li>
              <li><a href="#basicExampleModal" id="modalHover" data-toggle="modal" onmousemove="showModal()"><span><spring:message code="label.login"/></span></a></li>
              <!-- Modal -->
              <div class="modal fade" id="basicExampleModal" onmouseleave="hideModal()" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel"><spring:message code="label.modaltitle"/></h5>
                      <button type="button" class="close" onclick="hideModal()" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <form class="mx-1 mx-md-4" action="#">
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fa fa-user fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <c:set var="username"><spring:message code="label.username"/></c:set>
                            <input type="text" id="form3Example1c" class="form-control" placeholder="${username}"/>
                          </div>
                        </div>
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fa fa-lock fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <c:set var="password"><spring:message code="label.password"/></c:set>
                            <input type="password" id="form3Example4c" class="form-control" placeholder="${password}"/>
                          </div>
                        </div>
                        <div class="modal-footer" style="justify-content: center;">
                          <button type="button" class="btn btn-primary"><spring:message code="label.login"/></button>
                        </div>
                      </form>
                    </div>
                    <p class="text-center text-muted mb5"><spring:message code="label.donthaveaccount"/>
                      <a href="/users/signup/form.html?curr=${sessionScope.curr}&lang=${sessionScope.lang}" class="text-body"><u><spring:message code="label.signup"/></u></a>
                    </p>
                  </div>
                </div>
              </div>
            </ul>
          </div>
          <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>
        </nav>
      </header>
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
      <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/fetch-functions.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/typed.js"></script>
    </body>
</html>