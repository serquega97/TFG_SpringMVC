//Returns the webname of a service according to their name
function getWebnameByName(product_webname) {
    var selected_option;
    switch(product_webname) {
        case "Punción seca":
            selected_option = "Puncion";
            break;

        case "Electroterapia":
            selected_option = "Electroterapia";
            break;

        case "Readaptación deportiva":
            selected_option = "Readaptacion";
            break;

        case "Masaje terapéutico (masoterapia)":
            selected_option = "Masoterapia";
            break;

        case "Vendaje Neuromuscular (Kinesiotaping)":
            selected_option = "Kinesio";
            break;
    }

    return selected_option;
}

//Returns de value translation for a label
function getMessageByAjaxCall(label_code) {
    var result = "";
    $.ajax({
      url: '/get/message?message='+label_code,
      async: false,  
      success: function(data) {
         result = data; 
      }
   });
   return result;
}

//Returns the current locale
function getURLLocale() {
    //Check user's locale in the URL-> lang=es or lang=en
    var currentLocale;
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    if(urlParams.get('lang') === 'en') {
        currentLocale = "en-gb";
    }else {
        currentLocale = "es-es";
    }

    return currentLocale;
}