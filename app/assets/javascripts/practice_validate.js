$(document).ready(function() {
    $("#practiceValidate").bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            "practice[:speciality]": {
                validators: {
                    notEmpty: {
                        message: 'The speciality is required'
                    }                   
                }
            }, 
          "practice[:name]": {
                validators: {
                    notEmpty: {
                        message: 'The name is required'
                    }                   
                }
            }, 
          "practice[:address_1]": {
                validators: {
                    notEmpty: {
                        message: 'The address is required'
                    }                   
                }
            },  
          "practice[:addres_2]": {
                validators: {
                    notEmpty: {
                        message: 'The address is required'
                    }                   
                }
            },  
          "practice[:zip]": {
                validators: {   
                  notEmpty: {
                        message: 'The ZipCode is required'
                    },                  
                    regexp: {
                        regexp: /^\d{5}$/,
                        message: 'The US zipcode must contain 5 digits'
                    }                
                }
             },
          "practice[:phone]": {
                validators: {
                    notEmpty: {
                        message: 'The phone number is required'
                    }                   
                }
            },  
          "practice[:fax]": {
                validators: {
                    notEmpty: {
                        message: 'The fax is required'
                    }                   
                }
            },  
          "practice[:web]": {
                validators: {
                    notEmpty: {
                        message: 'The fax is required'
                    }                   
                }
            },
          "practice[:email]": {
                validators: {
                    notEmpty: {
                        message: 'The email is required'
                    },
                    emailAddress: {
                        message: 'The input is not a valid email address'
                    }
                }
            }
          
        }
    });
});