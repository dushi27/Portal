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
                  
            email: {
                validators: {
                    notEmpty: {
                        message: 'The email is required'
                    },
                    emailAddress: {
                        message: 'The input is not a valid email address'
                    }
                }
            },
           
          address_1: {
                validators: {
                    notEmpty: {
                        message: 'The street address is required'
                    }
                }
            },
          addres_2: {
                validators: {
                    notEmpty: {
                        message: 'The city is required'
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
          phone: {
                validators: {
                    phone: {
                        message: 'Valid phone number is required'
                    }                 
                    
                }
            }        

        }
    });
});