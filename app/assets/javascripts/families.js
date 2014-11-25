$(document).ready(function(){

  var labels = $(".exam-counts");

  $.each(labels, function(index, label) {
    $(label).on('ajax:success', function() {
      $(this).prev(".exam-counts").hide();
      $(this).hide();
    });
  });

});
