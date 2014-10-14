$(document).ready(function() {
    $('#createSubMerch').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            first_name: {
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
            last_name: {
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
           dob: {
                validators: {
                    notEmpty: {
                        message: 'The date of birth is required'
                    },                    
                    date: {
                        format: 'MM/DD/YYYY',
                        message: 'The date of birth is not formatted correctly'
                    }
                }
            },
          street: {
                validators: {
                    notEmpty: {
                        message: 'The street address is required'
                    }
                }
            },
          city: {
                validators: {
                    notEmpty: {
                        message: 'The city is required'
                    }
                }
            },
          state: {
                validators: {   
                  notEmpty: {
                        message: 'The state is required'
                    },
                  stringLength: {
                        max: 2,
                        message: 'Enter two letter state code Ex. NY'
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
          legal_name: {
                validators: {
                    notEmpty: {
                        message: 'The Legal name is required'
                    }                 
                    
                }
            },
          dba: {
                validators: {
                    notEmpty: {
                        message: 'The DBA name is required'
                    }           
               }
            },
          tax_id: {
                validators: {
                    notEmpty: {
                        message: 'the tax ID is required'
                    }           
               }
            },
          accountno: {
                validators: {
                    notEmpty: {
                        message: 'The account number is required'
                    }           
               }
            },
          routing: {
                validators: {
                    notEmpty: {
                        message: 'The routing number is required'
                    }           
               }
            },
          tos: {
                validators: {
                    notEmpty: {
                        message: 'Required field'
                    }                  
               }
            }
        }
    });
});