$(document).ready(function(){

  function setGradedCounts(quizId, quiz) {
    $.ajax({
      url: "/graded_count",
      type: "GET",
      data: {},
      dataType: "json",
      success: function(counts){

        $.each($(".quiz"), function( index, quiz ) {
          var quizId = $(quiz).data("quiz-id");
          if (counts[quizId]) {
            if (counts[quizId]["graded"] > 0) {
              $(quiz).append("<span class='label label-success exam-count' title='Number of times exam has been completed'>" + counts[quizId]["graded"] + "</span>");
            }
            if (counts[quizId]["in_progress"] > 0) {
              $(quiz).append(inProgressExamHtml() + cancelExamHtml());
              $(quiz).find(".cancel-exam").click(function() {
                if (confirm("Are you sure you want to cancel this in progress exam?") == true) {
                  cancelExam(quizId);
                }
              });
              $(quiz).find(".in-progress").click(function() {
                var href = $($(quiz).find("a")[0]).attr("href");
                document.location.href= href;
              });
            }
          }
        });

      }
    });
  }

  setGradedCounts();

  function cancelExam(quizId) {
    $.ajax({
      url: "/cancel_exam",
      type: "POST",
      data: {
        quiz_id: quizId
      },
      dataType: "json",
      success: function(data){
        var quiz = $('*[data-quiz-id=' + quizId + ']');
        $(quiz).find(".in-progress").remove();
        $(quiz).find(".cancel-exam").remove();
      }
    });
  }

  function inProgressExamHtml() {
    return "<span class='label label-info in-progress' title='In Progress'>&#x274B</span>"
  }

  function cancelExamHtml() {
    return "<span class='label label-danger cancel-exam' title='Cancel Exam In Progress'>&#x2718</span>"
  }

});
