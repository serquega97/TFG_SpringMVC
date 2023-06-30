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
      url: '/get/message?message=' + label_code,
      async: false,  
      success: function(data) {
         result = data; 
      }
   });
   return result;
}

//Returns the value of a session attribute passed by parameter
function getSessionAttribute(session_attr) {
    var result = "";
    $.ajax({
      url: '/get/session/attribute?session_attr=' + session_attr,
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

//Method that executes the autocomplete logic for the search box
function autocompleteProducts() {
    const curr = getSessionAttribute("curr");
    const lang = getSessionAttribute("lang");
    var searchValue = document.getElementById("searchBox").value;
    console.log("Search box input value document: " + searchValue);
    //Do autocomplete
    $(document).ready(function() {
        $('#searchBox').autocomplete({
            source: '/products/search/products/',
            minLength: 1,
            select: function(event, ui) {
                console.log("Redirecting to product: " + ui.item.label);
                this.blur();
                //Clean search box after pressed the option
                document.getElementById("searchBox").value = "";
                window.location.href = '/products/name/' + ui.item.label + '?curr=' + curr + '&lang=' + lang;
            },
            focus: function(event, ui) {
                console.log("Focus on product " + ui.item.label);
                document.getElementById("searchBox").value = ui.item.label;
            }
        });
    });
}

function showModal() {
    $('.modal').modal('show');
}

function hideModal() {
    $('.modal').modal('hide');
}

function onKeyPressCheckParams() {
    console.log('SQG onKeyPressCheckParams');
    var registrationForm = document.getElementById("formId");
    registrationForm && registrationForm.addEventListener('submit', checkFormData);
}

function checkFormData(event) {
    console.log('SQG checkFormData ');
}

function validateForm(event) {
    var nameOK = false, lastnameOK = false, phoneOK = false, usernameOK = false, passwordOK = false, emailOK = false;
    var confirmEmailOK = false, birthdateOK = false, genderOK = false;
    //If name is blank don't submit form
    var name = document.getElementById("firstNameR").value;
    if(name === undefined || name === null || name === "") {
        applyCssValidationClass("nameId", "firstNameR", "visible", "cssError", "inputValidation", "label.name_required");
    }else {
        nameOK = true;
        removeCssValidationClass("nameId", "firstNameR", "hidden", "cssError", "inputValidation");
    }

    //If lastname is blank don't submit form
    var lastName = document.getElementById("lastName1").value;
    if(lastName === undefined || lastName === null || lastName === '') {
        applyCssValidationClass("lastNameId", "lastName1", "visible", "cssError", "inputValidation", "label.lastname_required");
    }else {
        lastnameOK = true;
        removeCssValidationClass("lastNameId", "lastName1", "hidden", "cssError", "inputValidation");
    }

    //If phone is blank don't submit form
    var phone = document.getElementById("phone").value;
    if(phone === undefined || phone === null || phone === '') {
        applyCssValidationClass("phoneId", "phone", "visible", "cssError", "inputValidation", "label.phone_required");
    }else {
        phoneOK = true;
        removeCssValidationClass("phoneId", "phone", "hidden", "cssError", "inputValidation");
    }

    //If username is blank don't submit form
    var username = document.getElementById("username").value;
    if(username === undefined || username === null || username === '') {
        applyCssValidationClass("usernameId", "username", "visible", "cssError", "inputValidation", "label.username_required");
    }else {
        usernameOK = true;
        removeCssValidationClass("usernameId", "username", "hidden", "cssError", "inputValidation");
    }

    //If password is blank don't submit form
    var password = document.getElementById("password").value;
    if(password === undefined || password === null || password === '') {
        applyCssValidationClass("passwordId", "password", "visible", "cssError", "inputValidation", "label.password_required");
    }else {
        passwordOK = true;
        removeCssValidationClass("passwordId", "password", "hidden", "cssError", "inputValidation");
    }

    //If email is blank don't submit form
    var emailAddress = document.getElementById("emailAddress").value;
    if(emailAddress === undefined || emailAddress === null || emailAddress === '') {
        applyCssValidationClass("emailId", "emailAddress", "visible", "cssError", "inputValidation", "label.email_required");
    }else {
        emailOK = true;
        removeCssValidationClass("emailId", "emailAddress", "hidden", "cssError", "inputValidation");
    }

    //If confirm email is blank don't submit form
    var confirmEmail = document.getElementById("confirmEmail").value;
    if(confirmEmail === undefined || confirmEmail === null || confirmEmail === '') {
        applyCssValidationClass("confirmEmailId", "confirmEmail", "visible", "cssError", "inputValidation", "label.confirmemail_required");
    }else {
        confirmEmailOK = true;
        removeCssValidationClass("confirmEmailId", "confirmEmail", "hidden", "cssError", "inputValidation");
    }

    //If birth date is blank don't submit form
    var birthdayDate = document.getElementById("birthdayDate").value;
    if(birthdayDate === undefined || birthdayDate === null || birthdayDate === '') {
        applyCssValidationClass("birthdayDateId", "birthdayDate", "visible", "cssError", "inputValidation", "label.birthdate_required");
    }else {
        birthdateOK = true;
        removeCssValidationClass("birthdayDateId", "birthdayDate", "hidden", "cssError", "inputValidation");
    }

    //If gender is blank don't submit form
    var genderSelect = document.getElementById("genderSelect").value;
    if(genderSelect === undefined || genderSelect === null || genderSelect === '' || genderSelect === 'default') {
        applyCssValidationClass("genderSelectId", "genderSelect", "visible", "cssError", "inputValidation", "label.gender_required");
    }else {
        genderOK = true;
        removeCssValidationClass("genderSelectId", "genderSelect", "hidden", "cssError", "inputValidation");
    }

    if(!nameOK || !lastnameOK || !phoneOK || !usernameOK || !passwordOK || !emailOK || !confirmEmailOK || !birthdateOK || !genderOK) {
        event.preventDefault();
        event.stopPropagation();
    }
}

function applyCssValidationClass(divElementId, inputElementId, visibVisible, cssError, cssInputValidation, message_label) {
    document.getElementById(divElementId).style.visibility = visibVisible;
    document.getElementById(divElementId).classList.add(cssError);
    document.getElementById(divElementId).innerHTML = getMessageByAjaxCall(message_label);
    document.getElementById(inputElementId).classList.add(cssInputValidation);
}

function removeCssValidationClass(divElementId, inputElementId, visibHidden, cssError, cssInputValidation) {
    document.getElementById(divElementId).style.visibility = visibHidden;
    document.getElementById(divElementId).classList.remove(cssError);
    document.getElementById(divElementId).innerHTML = "";
    document.getElementById(inputElementId).classList.remove(cssInputValidation);
}