$(document).ready(function(){
  $('.answer_hide').toggle(
    function(){
      $(this).attr('class', 'answer_show')
    }, 
    function(){
      $(this).attr('class', 'answer_hide')
    }
  );

  var questionRows = $(".question-row");
  var checkMark = "\u2713";
  var cross = "\u2718";

  $.each(questionRows, function(index, questionRow){
    var rightButton = $(questionRow).find(".right-answer");
    var wrongButton = $(questionRow).find(".wrong-answer");
    var questionId = $(questionRow).data("question-id");
    var examId = $(".exam-information").data("exam-id");
    setButtonListener(rightButton, questionId, examId, "right");
    setButtonListener(wrongButton, questionId, examId, "wrong");
  }); //end each()

  function setButtonListener(button, questionId, examId, answerStatus) {
    $(button).click(function(){
      var self = this;
      $.ajax({
        url: "/set_answer_status",
        type: "POST",
        data: {
          answer: {
            exam_id: examId,
            question_id: questionId,
            status: answerStatus
          }
        },
        dataType: "json",
        success: function(data){
          var unicode = $(self).hasClass("right-answer") ? checkMark : cross
          hideButtons($(self).parent(), unicode);
        },
        error: function() {
          alert("failure")
        }
      });
    }); //end click()
  }

  function hideButtons(cell, unicode) {
    $(cell).children().toggleClass("hide");
    $(cell).text(unicode);
  }

});
