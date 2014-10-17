$(document).ready(function() {
    $("#ptntProfil").bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            'patient_profile[:firstname]': {
                validators: {
                    notEmpty: {
                        message: 'The first name is required'
                    },                    
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: 'The name can only consist of alphabetical, number and underscore'
                    }
                }
            },
            'patient_profile[:lastname]': {
                validators: {
                    notEmpty: {
                        message: 'The last name is required'
                    },                    
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: 'The name can only consist of alphabetical, number and underscore'
                    }
                }
            },    
          "patient_profile[:profilepic]": {
                validators: {
                    notEmpty: {
                        message: 'Profile picture is required'
                    }
                }
            },      
            
         'patient_profile[:zipcode]': {
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
          
         'patient_profile[:docpref1]': {
                validators: {   
                  notEmpty: {
                        message: 'Please specify atleast one doctor'
                  }
                }
            }
        } 
    });
});