$(document).ready(function () {
  $("#createSubMerch").validate({
    rules: {
      debug: true,
      success: "valid",
      ":first_name": {required: true, name: true},
      ":last_name": {required: true, name: true},
      ":email": {required: true, email: true},
      ":dob": {required: true, date: true},
      ":street": {required: true},
      ":city": {required: true, name: true},
      ":state": {required: true, name: true},
      ":zip": {required: true, zipcodeUS: true},
      ":legal_name": {required: true},
      ":dba": {required: true},
      ":tax_id": {required: true},
      ":accountno": {required: true, number: true},
      ":routing": {required: true, number: true},
      ":tos": {required: true}
    }
   });
  
  //$("#").validate({
  
// });
});

