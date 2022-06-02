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
    //Check user's locale in the URL-> lang=es, lang=en, lang=fr
    var currentLocale;
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    if(urlParams.get('lang') === 'en') {
        currentLocale = "en-gb";
    }else if(urlParams.get('lang') === 'es') {
        currentLocale = "es-es";
    }else if(urlParams.get('lang') === 'fr') {
        currentLocale = "fr-fr";
    }

    return currentLocale;
}

//Returns the language from the URL
function getURLLanguage() {
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    return urlParams.get('lang');
}

//Method that executes the autocomplete logic for the search box
function autocompleteProducts() {
    const lang = getURLLanguage();
    var searchValue = document.getElementById("searchBox").value;
    console.log("Search box input value document: " + searchValue);
    //Do autocomplete
    $(document).ready(function() {
        $('#searchBox').autocomplete({
            source: '/products/search/products/',
            minLength: 1,
            select: function(event, ui) {
                console.log("Redirecting to product: " + ui.item.label);
                window.location.href = '/products/name/' + ui.item.label + '?lang=' + lang;
            }
        });
    });
}