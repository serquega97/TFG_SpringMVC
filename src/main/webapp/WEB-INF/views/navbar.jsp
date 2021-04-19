<%@ page contentType="text/html; charset=UTF-8" %>
<header class="site-navbar" role="banner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-11 col-xl-4">
        </div>
        <div class="col-md-4 col-xs-12 col-sm-4">
        </div>
        <div class="col-12 col-md-8 d-none d-xl-block">
          <div style="position: absolute; left: 10px; top: 5px;">
            <a href="#en" class="site-navigation position-relative text-left" data-reload><img src="resources/flags/en.png" class="rev-slidebg" alt="" height="12px;"></a>
            <a href="#es" class="site-navigation position-relative text-left" data-reload ><img src="resources/flags/es.jpg" class="rev-slidebg" alt="" height="12px;"></a>
          </div>
          <nav class="site-navigation position-relative text-right" role="navigation">
            <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
              <li class="active"><a href="/"><span id="inicio">Inicio</span></a></li>
              <li class="has-children">
                <a><span id="servicios">Servicios</span></a>
                <ul class="dropdown arrow-top">
                  <li><a href="/products/service/Puncion">Punción seca</a></li>
                  <li><a href="/products/service/Readaptacion">Readaptación deportiva</a></li>
                  <li><a href="/products/service/Electroterapia">Electroterapia</a></li>
                  <li><a href="/products/service/Masoterapia">Masaje terapéutico</a></li>
                  <li><a href="/products/service/Kinesio">Vendaje neuromuscular</a></li>
                </ul>
              </li>
              <li class="has-children">
                  <a><span>Productos</span></a>
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
              <li><a href="blog.html"><span>Sobre nosotros</span></a></li>
              <li><a href="https://www.qcuidate.com" target = "_blank"><span>Blog</span></a></li>
            </ul>
          </nav>
        </div>


        <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

        </div>

      </div>
    </div>
    
  </header>
  <script>

    function reload() {
      location.reload(true);
    }

    //Language translations
    var language = {
      en: {
        inicio: "Home",
        servicios: "Services",
        todos: "All"
      }
    };

    //Define language via window hash
    if(window.location.hash) {
      if(window.location.hash === "#en") {
        inicio.textContent = language.en.inicio;
        servicios.textContent = language.en.servicios;
        todos.textContent = language.en.todos;
      }
    }
  </script>