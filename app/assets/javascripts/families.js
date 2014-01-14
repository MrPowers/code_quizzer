$(document).ready(function(){

  $.each($(".quiz"), function( index, value ) {
    var quizId = $(this).data("quiz-id");
    getGradedCount(quizId, this);
  });

  function getGradedCount(quizId, quiz) {
    $.ajax({
      url: "/graded_count",
      type: "GET",
      data: {
        quiz_id: quizId
      },
      dataType: "json",
      success: function(count){
        if (count > 0) {
          $(quiz).append("<span class='label label-success exam-count'>" + count + "</span>");
        }
      },
      error: function() {
      }
    });
  }
});
