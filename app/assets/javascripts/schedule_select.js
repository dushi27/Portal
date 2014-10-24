var counter = "";
$(function () {
  var isMouseDown = false,
    isHighlighted;
  $("#our_table td").mousedown(function () {
      isMouseDown = true;
      $(this).toggleClass("highlighted");
      $(this).nodeValue = 1;
      isHighlighted = $(this).hasClass("highlighted");
      return false; // prevent text selection
    })
    .mouseover(function () {
      if (isMouseDown) {
        $(this).toggleClass("highlighted", isHighlighted);
      }
    });
  
  
function calculate() {
     for(i=0; i < document.getElementById('our_table').rows.length; i++){   
       var classValue = document.getElementById('our_table').rows[i].cells[0].className;   
       counter += classValue;
       console.log(counter);
     }   
 };

  
  $(document)
    .mouseup(function () {
      isMouseDown = false;
    });
});