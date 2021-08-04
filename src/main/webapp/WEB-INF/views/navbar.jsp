<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<header class="site-navbar" role="banner">
    <div class="container">
      <div class="row align-items-center">
        <div style="position: absolute; left: 10px; top: 5px; margin-left: 100px">
          <a href="${pageContext.request.contextPath}/home?lang=en" class="site-navigation position-relative text-left"><img src="${pageContext.request.contextPath}/resources/flags/en.png" class="rev-slidebg" alt="" height="12px;"></a>
          <a href="${pageContext.request.contextPath}/home?lang=es" class="site-navigation position-relative text-left"><img src="${pageContext.request.contextPath}/resources/flags/es.jpg" class="rev-slidebg" alt="" height="12px;"></a>
        </div>
        <div class="col-11 col-xl-4">
        </div>
        <div class="col-12 col-md-8 d-none d-xl-block" style="float: right;">
          <nav class="site-navigation position-relative text-right" role="navigation">
            <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
              <li class="active"><a href="/"><span id="inicio"><spring:message code="label.home" text="default text"/></span></a></li>
              <li class="has-children">
                <a><span id="servicios"><spring:message code="label.service" text="default text"/></span></a>
                <ul class="dropdown arrow-top">
                  <li><a href="/products/service/Puncion"><spring:message code="label.puncion" text="default text"/></a></li>
                  <li><a href="/products/service/Readaptacion">Readaptación deportiva</a></li>
                  <li><a href="/products/service/Electroterapia">Electroterapia</a></li>
                  <li><a href="/products/service/Masoterapia">Masaje terapéutico</a></li>
                  <li><a href="/products/service/Kinesio">Vendaje neuromuscular</a></li>
                </ul>
              </li>
              <li class="has-children">
                  <a><span><spring:message code="label.products" text="default text"/></span></a>
                  <ul class="dropdown arrow-top">
                    <li><a href="/products/all" id="todos">Todos</a></li>
                    <li><a href="/products/type/Electroterapia">Electroterapia</a></li>
                    <li><a href="/products/type/Termoterapia">Termoterapia</a></li>
                    <li><a href="/products/type/Crioterapia">Crioterapia</a></li>
                    <li><a href="/products/type/Magnetoterapia">Magnetoterapia</a></li>
                    <li><a href="/products/type/Aceite">Cremas y aceites</a></li>
                    <li><a href="/products/type/Kinesiotape">Kinesiotape (K-Tape)</a></li>
                    <li><a href="/products/type/Masaje">Objetos de masaje</a></li>
                  </ul>
                </li>
              <li><a href="blog.html"><span><spring:message code="label.us" text="default text"/></span></a></li>
              <li><a href="https://www.qcuidate.com" target = "_blank"><span>Blog</span></a></li>
              <li><a href="/book/calendar"><span><spring:message code="label.appointments" text="default text"/></span></a></li>
            </ul>
          </nav>
        </div>


        <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

        </div>

      </div>
    </div>
    
  </header>