$(document).ready(function() {
    $("#practiceValidate").bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            name: {
                validators: {
                    notEmpty: {
                        message: 'The name is required'
                    }                   
                }
            },    
          zip: {
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
            email: {
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