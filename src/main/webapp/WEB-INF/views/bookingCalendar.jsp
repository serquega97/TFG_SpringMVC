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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/disable_cell.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/calendar_traditional.css">
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
      
      <!--<label><input type="checkbox" id="weekends" checked="checked" style="margin-top: 4cm; margin-left: 9cm">Mostrar fines de semana</label> -->
      <div class="row">
        <div id="nav" style="margin-top: 5cm; margin-left: 3cm; float: left; width: 200px; height: 100px;"></div>
        <div id="dp" style="margin-top: 5cm; width: 900px; height: 120px;"></div>
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
        var lastDate = null;
        var nav = new DayPilot.Navigator("nav");
        nav.weekStarts = 1;             //Week starts on Monday
        nav.locale = "es-es";
        nav.showMonths = 3;
        nav.skipMonths = 3;
        nav.selectMode = "month";

        //Disable previous day than today and Sundays
        nav.onBeforeCellRender = function(args) {
            if(args.cell.day < DayPilot.Date.today() || args.cell.day.getDayOfWeek() === 0) {
                args.cell.cssClass = "navigator-disabled-cell";
            }
        };

        nav.onTimeRangeSelect = function(args) {
            if(args.day < DayPilot.Date.today() || args.day.getDayOfWeek() === 0) {
                args.preventDefault();
                nav.select(lastDate, {dontNotify: true, dontFocus: true});
            }
            else {
                lastDate = args.start;
            }
        };

        //Update calendar according nav selection
        nav.onTimeRangeSelected = function(args) {
            dp.startDate = args.day;
            dp.update();
            dp.events.load("/api/events");
        };
        nav.init();

        var dp = new DayPilot.Calendar("dp");
        dp.headerDateFormat = "dddd dd/MM/yyyy";
        dp.headerHeight = 50;
        dp.viewType= "Week";
        dp.weekStarts = 1;
        //Include calendar_traditonal css file for theme
        dp.theme = "calendar_traditional";

        //Disable non-working time ranges
        dp.onBeforeCellRender = function(args) {
            //From Monday to Friday
            if(args.cell.start.getDayOfWeek() != 6 && args.cell.start.getDayOfWeek() != 0) {
                if(args.cell.start.getHours() < 9 || (args.cell.start.getHours() >= 13) && (args.cell.start.getHours() < 16) || 
                    args.cell.start.getHours() >= 20) {
                    args.cell.disabled = true;
                    args.cell.backColor = "silver";
                }
            //Saturdays
            }else if(args.cell.start.getDayOfWeek() === 6) {
                if(args.cell.start.getHours() < 9 || args.cell.start.getHours() >= 14) {
                    args.cell.disabled = true;
                    args.cell.backColor = "silver";
                }
            //Sundays
            }else if(args.cell.start.getDayOfWeek() === 0) {
                args.cell.disabled = true;
                args.cell.backColor = "silver";
            }
        };

        //Handling time range event
        dp.onTimeRangeSelected = function(args) {
            //Adding modal form fields
            var form = [
                {
                    name: "Introduce tu nombre:", 
                    id: "name",
                    type: "text",
                },
                {
                    type: "searchable",
                    id: "service",
                    name: "Selecciona tu servicio:",
                    options: [
                        {
                            name: "Electroterapia",
                            id: "electroterapia",
                        },
                        {
                            name: "Punción seca",
                            id: "puncion",
                        },
                        {
                            name: "Readaptación deportiva",
                            id: "readaptacion",
                        },
                        {
                            name: "Masoterapia",
                            id: "masoterapia",
                        },
                        {
                            name: "Vendaje neuromuscular",
                            id: "kinesio",
                        },
                    ],
                },
            ];

            var data = {};

            DayPilot.Modal.form(form, data, /*{theme: "modal_rounded"}*/).then(function(margs) {
                //If user click OK on the form
                if(!margs.canceled) {
                    var param = {
                        product_name: margs.result.service
                    };

                    DayPilot.Http.ajax({
                        url: 'products/services/name',
                        data: param,
                        success: function(ajax) {
                            var product = ajax.data;
                        },
                    });

                    //Generate params for the request to the calendar API
                    var params = {
                        start: args.start.toString(),
                        end: args.end.toString(),
                        text: margs.result.name,
                        resource: args.resource
                    };

                    //Save new event to DB and add it to the calendar
                    DayPilot.Http.ajax({
                        url: '/api/events/create',
                        data: params,
                        success: function(ajax) {
                            var data = ajax.data;
                            dp.events.add(data);
                            dp.message("Cita creada correctamente");
                        },
                    });
                }
            });
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
        //Init calendar
        dp.init();
        //Get events
        dp.events.load("/api/events");
    </script>
  </body>
</html>