<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Calendario de citas</title>
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
      
      <label><input type="checkbox" id="weekends" checked="checked" style="margin-top: 4cm; margin-left: 9cm">Mostrar fines de semana</label>
      <div class="row">
        <div id="nav" style="margin-top: 1cm; margin-left: 3cm; float: left; width: 200px; height: 100px;"></div>
        <div id="dp" style="margin-top: 1cm; width: 900px; height: 120px;"></div>
        <div id="dc"></div>
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
    <script src="${pageContext.request.contextPath}/resources/js/daypilot-all.min.js"></script> 
    <script>
        var nav = new DayPilot.Navigator("nav");
        nav.showMonths = 3;
        nav.skipMonths = 3;
        nav.selectMode = "month";
        //Update calendar according nav selection
        nav.onTimeRangeSelected = function(args) {
            dp.startDate = args.day;
            dp.update();
            dp.events.load("/api/events");
        };
        nav.init();

        var dp = new DayPilot.Calendar("dp");
        dp.headerDateFormat = "d/M/yyyy";
        dp.onTimeRangeSelected = function(args) {
            var name = prompt("Introduzca su nombre", "");
            dp.clearSelection();
            if (!name) {
                return;
            } 
            var params = {
                start: args.start.toString(),
                end: args.end.toString(),
                text: name,
                resource: args.resource
            };
            DayPilot.Http.ajax({
                url: '/api/events/create',
                data: params,
                success: function(ajax) {
                    var data = ajax.data;
                    dp.events.add(data);
                    dp.message("Cita creada correctamente");
                },
            })
            //dp.events.add(e);
            dp.message("Created");
        };

        //Insert option in the events and execute a job when option is clicked
        dp.contextMenu = new DayPilot.Menu({
            items: [
                {
                    text: "Delete",
                    onClick: function(args) {
                        var e = args.source;
                        var params = {
                            id: e.id()
                        };
                        DayPilot.Http.ajax({
                            url: '/api/events/delete',
                            data: params,
                            success: function(ajax) {
                                dp.events.remove(e);
                                dp.message("Cita borrada");
                            },
                        });
                    }
                }
            ]
        });
        //Init month calendar
        dp.init();
        //Get events
        dp.events.load("/api/events");

        var elements = {
            weekends : document.querySelector("#weekends")
        };
        elements.weekends.addEventListener("click", function() {
            dp.showWeekend = elements.weekends.checked;
            dp.update();
        });
    </script>
  </body>
</html>