<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
    </head>
    <body>
      <header class="site-navbar" role="banner">
        <nav class="site-navigation" role="navigation">
          <div class="container" style="position: absolute; top: 15px; margin-left: 10px">
            <ul class="site-menu">
              <li class="has-children">
                <a><span><i class="fa fa-language" style="margin-right: 6px;"></i><spring:message code="label.language"/></span></a>
                <ul class="dropdown arrow-top">
                  <li><a href="/home?lang=en" class="dropdown-item"><img src="${pageContext.request.contextPath}/resources/flags/en.png" class="rev-slidebg" alt="" height="12px;" style="margin-right: 6px;"><spring:message code="label.english"/></a></li>
                  <li><a href="/home?lang=es" class="dropdown-item"><img src="${pageContext.request.contextPath}/resources/flags/es.png" class="rev-slidebg" alt="" height="12px;" style="margin-right: 6px;"><spring:message code="label.spanish"/></a></li>
                  <li><a href="/home?lang=fr" class="dropdown-item"><img src="${pageContext.request.contextPath}/resources/flags/fr.png" class="rev-slidebg" alt="" height="12px;" style="margin-right: 6px;"><spring:message code="label.french"/></a></li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="container" style="position: absolute; top: 15px; margin-left: 170px;">
            <div class="form-group col-12 col-md-8 d-none d-xl-block">
              <form class="form-inline d-flex justify-content-center active-pink active-pink-2 mt-2" action="/products/name?lang=${sessionScope.lang}" style="margin-left: 60px; position: absolute;">
                <c:set var="searchValue"><spring:message code="label.search"/></c:set>  
                <i class="fa fa-search" aria-hidden="true"></i>
                <input class="form-control form-control-sm ml-3 .active-pink-2" id="searchBox" name="searchBox" type="text" oninput="autocompleteProducts()" size="35" style="background: transparent; color:#f48fb1 !important;" placeholder="${searchValue}" aria-label="Search">
              </form>
            </div>
          </div>
          <div class="container" style="position: absolute; top: 15px; margin-left: 650px;">
            <ul class="site-menu">
              <li class="active"><a href="/home?lang=${sessionScope.lang}"><span><spring:message code="label.home"/></span></a></li>
              <li class="has-children">
                <a><span id="servicios"><spring:message code="label.service"/></span></a>
                <ul class="dropdown arrow-top">
                  <li><a href="/treatments/webname/Puncion?lang=${sessionScope.lang}"><spring:message code="label.puncion"/></a></li>
                  <li><a href="/treatments/webname/Readaptacion?lang=${sessionScope.lang}"><spring:message code="label.rehabilitation"/></a></li>
                  <li><a href="/treatments/webname/Electroterapia?lang=${sessionScope.lang}"><spring:message code="label.electrotherapy"/></a></li>
                  <li><a href="/treatments/webname/Masoterapia?lang=${sessionScope.lang}"><spring:message code="label.masotherapy"/></a></li>
                  <li><a href="/treatments/webname/Kinesio?lang=${sessionScope.lang}"><spring:message code="label.kinesio"/></a></li>
                </ul>
              </li>
              <li class="has-children">
                  <a><span><spring:message code="label.products"/></span></a>
                  <ul class="dropdown arrow-top">
                    <li><a href="/products/all?lang=${sessionScope.lang}"><spring:message code="label.all"/></a></li>
                    <li><a href="/products/type/Electroterapia?lang=${sessionScope.lang}"><spring:message code="label.electrotherapy"/></a></li>
                    <li><a href="/products/type/Termoterapia?lang=${sessionScope.lang}"><spring:message code="label.thermotherapy"/></a></li>
                    <li><a href="/products/type/Crioterapia?lang=${sessionScope.lang}"><spring:message code="label.cryotherapy"/></a></li>
                    <li><a href="/products/type/Magnetoterapia?lang=${sessionScope.lang}"><spring:message code="label.magnetotherapy"/></a></li>
                    <li><a href="/products/type/Aceite?lang=${sessionScope.lang}"><spring:message code="label.oils"/></a></li>
                    <li><a href="/products/type/Kinesiotape?lang=${sessionScope.lang}"><spring:message code="label.kinesio"/></a></li>
                    <li><a href="/products/type/Masaje?lang=${sessionScope.lang}"><spring:message code="label.massage"/></a></li>
                  </ul>
                </li>
              <li><a href=""><span><spring:message code="label.us"/></span></a></li>
              <li><a href="https://www.qcuidate.com" target = "_blank"><span>Blog</span></a></li>
              <li><a href="/book/calendar?lang=${sessionScope.lang}"><span><spring:message code="label.appointments"/></span></a></li>
            </ul>
          </div>
          <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>
        </nav>
      </header>
      <script src="${pageContext.request.contextPath}/resources/js/fetch-functions.js"></script>
    </body>
</html>