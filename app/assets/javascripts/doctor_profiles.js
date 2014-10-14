$(document).ready(function() {
    $("#docProfile").bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
          'doctor_profile[:firstname ]': {
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
            'doctor_profile[:lastname]': {
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
                                         
          'doctor_profile[:speciality]': {
                validators: {   
                  notEmpty: {
                        message: 'The state is required'
                  }
                }
            },
          
          'doctor_profile[:zipcode]': {
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
          
          'doctor_profile[:fee]': {
                validators: {
                    notEmpty: {
                        message: 'The fee is required'
                    }           
               }
          }
        } 
    });
});