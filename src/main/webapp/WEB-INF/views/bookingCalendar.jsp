<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title><spring:message code="label.appcalendar"/></title>
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
      <div class="site-blocks-cover overlay" style="background-image: url(${pageContext.request.contextPath}/resources/images/Portada.JPG);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10">
            
            <div class="row justify-content-center mb-4">
              <div class="col-md-10 text-center">
                <h1 data-aos="fade-up" class="mb-5"><spring:message code="label.solution"/><span class="typed-words"></span></h1>
                <p data-aos="fade-up" data-aos-delay="100"><a href="/book/calendar?lang=${sessionScope.lang}" class="btn btn-primary btn-pill"><spring:message code="label.appointment"/></a></p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div> 
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
    <script src="${pageContext.request.contextPath}/resources/js/typed.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/fetch-functions.js"></script>
    <script>
        var lastDate = null;
        var nav = new DayPilot.Navigator("nav");
        nav.weekStarts = 1;             //Week starts on Monday
        nav.showMonths = 3;
        nav.skipMonths = 3;
        nav.selectMode = "month";
        //Update navigator locale
        nav.locale = getURLLocale();

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
        //Update calendar locale
        dp.locale = getURLLocale();

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
            dp.clearSelection();
            //Get translations
            var register = getMessageByAjaxCall('label.register');
            var introduce = getMessageByAjaxCall('label.introduce');
            var select = getMessageByAjaxCall('label.select');
            var electrotherapy = getMessageByAjaxCall('label.electrotherapy');
            var puncion = getMessageByAjaxCall('label.puncion');
            var rehabilitation = getMessageByAjaxCall('label.rehabilitation');
            var masotherapy = getMessageByAjaxCall('label.masotherapy');
            var kinesio = getMessageByAjaxCall('label.kinesio');
            //Adding modal form fields
            var form = [
                {
                    name: register
                },
                {
                    name: introduce, 
                    id: "name",
                    type: "text",
                },
                {
                    type: "searchable",
                    id: "service",
                    name: select,
                    options: [
                        {
                            name: electrotherapy,
                            id: "Electroterapia",
                        },
                        {
                            name: puncion,
                            id: "Punción seca",
                        },
                        {
                            name: rehabilitation,
                            id: "Readaptación deportiva",
                        },
                        {
                            name: masotherapy,
                            id: "Masaje terapéutico (masoterapia)",
                        },
                        {
                            name: kinesio,
                            id: "Vendaje Neuromuscular (Kinesiotaping)",
                        },
                    ],
                },
            ];

            var data = {};

            DayPilot.Modal.form(form, data, /*{theme: "modal_rounded"}*/).then(function(margs) {
                //If user click OK on the form
                if(!margs.canceled) {
                    var webname = getWebnameByName(margs.result.service);

                    $(document).ready(function() {
                        $.ajax({
                            method: 'GET',
                            url: '/api/v1/products/services/get/duration/'+webname,
                            success: function(data) {
                                //Generate params for the request to the calendar API
                                var params = {
                                    start: args.start.toString(),
                                    end: args.end.toString(),
                                    text: margs.result.name,
                                    resource: args.resource,
                                    servDuration: data
                                };
                                //Save new event to DB and add it to the calendar
                                DayPilot.Http.ajax({
                                    url: "/api/events/create",
                                    method: "POST",
                                    data: params,
                                    success: function (ajax) {
                                        var label_create = getMessageByAjaxCall('label.createmessage');
                                        const data = ajax.data;
                                        dp.events.add(ajax.data);
                                        dp.message(label_create);
                                    }
                                });
                            },
                        });
                    });
                }
            });
        };

        var delet = getMessageByAjaxCall('label.delete');
        var deleteMessage = getMessageByAjaxCall('label.deletemessage');
        //Insert option in the events and execute a job when option is clicked
        dp.contextMenu = new DayPilot.Menu({
            items: [
                {
                    text: delet,
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
                                dp.message(deleteMessage);
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

        //Typed words
        var pain = getMessageByAjaxCall('label.pain');
        var stress = getMessageByAjaxCall('label.stress');
        var fatigue = getMessageByAjaxCall('label.fatigue');
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