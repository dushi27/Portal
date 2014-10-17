$(document).ready(function() {
    $("#docProfile").bootstrapValidator({
        message: 'This input is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
          'doctor_profile[:firstname]': {
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
          'doctor_profile[:about]': {
                validators: {
                    notEmpty: {
                        message: 'The about field is required'
                    }   
                }
            }, 
          "doctor_profile[:profilepic]": {
                validators: {
                    notEmpty: {
                        message: 'The picture is required'
                    }   
                }
            }, 
           'doctor_profile[:schedule]': {
                validators: {
                    notEmpty: {
                        message: 'The schedule is required'
                    }   
                }
            },
                                         
          'doctor_profile[:speciality]': {
                validators: {   
                  notEmpty: {
                        message: 'The State is required'
                  }
                }
            },
           'doctor_profile[:title]': {
                validators: {   
                  notEmpty: {
                        message: 'The title is required'
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
          'doctor_profile[:plan]': {
                validators: {   
                  notEmpty: {
                        message: 'The plan is required'
                  }
                }
            },
           'doctor_profile[:npi]': {
                validators: {   
                  notEmpty: {
                        message: 'The NPI is required'
                  }
                }
            },
          'doctor_profile[:fee]': {
                validators: {
                    notEmpty: {
                        message: 'The fee is required'
                    },
                    numeric:{
                      message: 'The Fee has to be numeric'
                    } 
               }
          }
        } 
    });
});