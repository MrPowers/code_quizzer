// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

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
        },
        error: function() {
          alert("failure")
        }
      });
    }); //end click()
  }

});
