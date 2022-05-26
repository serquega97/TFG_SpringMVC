<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<header class="site-navbar" role="banner">
    <div class="container">
      <div class="row align-items-center">
        <div style="position: absolute; left: 10px; top: 5px; margin-left: 100px">
          <a href="/home?lang=en" class="site-navigation position-relative text-left"><img src="${pageContext.request.contextPath}/resources/flags/en.png" class="rev-slidebg" alt="" height="12px;"></a>
          <a href="/home?lang=es" class="site-navigation position-relative text-left"><img src="${pageContext.request.contextPath}/resources/flags/es.jpg" class="rev-slidebg" alt="" height="12px;"></a>
        </div>
        <div class="col-11 col-xl-4">
        </div>
        <div class="col-12 col-md-8 d-none d-xl-block" style="float: right;">
          <nav class="site-navigation position-relative text-right" role="navigation">
            <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
              <li class="active"><a href="/home?lang=${sessionScope.lang}"><span><spring:message code="label.home"/></span></a></li>
              <li class="has-children">
                <a><span id="servicios"><spring:message code="label.service"/></span></a>
                <ul class="dropdown arrow-top">
                  <li><a href="/products/service/Puncion?lang=${sessionScope.lang}"><spring:message code="label.puncion"/></a></li>
                  <li><a href="/products/service/Readaptacion?lang=${sessionScope.lang}"><spring:message code="label.rehabilitation"/></a></li>
                  <li><a href="/products/service/Electroterapia?lang=${sessionScope.lang}"><spring:message code="label.electrotherapy"/></a></li>
                  <li><a href="/products/service/Masoterapia?lang=${sessionScope.lang}"><spring:message code="label.masotherapy"/></a></li>
                  <li><a href="/products/service/Kinesio?lang=${sessionScope.lang}"><spring:message code="label.kinesio"/></a></li>
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
          </nav>
        </div>


        <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

        </div>

      </div>
    </div>
  </header>