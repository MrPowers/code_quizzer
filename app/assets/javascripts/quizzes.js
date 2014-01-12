$(document).ready(function(){
 $('.answer').click(function() {
   $(this).toggleClass('no-opacity');
 });

  var questionRows = $(".question-row");
  var checkMark = "\u2713";
  var cross = "\u2718";

  $.each(questionRows, function(index, questionRow){
    var correctButton = $(questionRow).find(".correct-answer");
    var incorrectButton = $(questionRow).find(".incorrect-answer");
    var questionId = $(questionRow).data("question-id");
    var examId = $(".exam-information").data("exam-id");
    setButtonListener(correctButton, questionId, examId, "correct");
    setButtonListener(incorrectButton, questionId, examId, "incorrect");
    getAnswer(examId, questionId, questionRow);
  }); //end each()

  function getAnswer(examId, questionId, questionRow) {
    $.ajax({
      url: "/get_answer",
      type: "GET",
      data: {
        answer: {
          exam_id: examId,
          question_id: questionId,
        }
      },
      dataType: "json",
      success: function(data){
        if (data) {
          var cell = $(questionRow).find(".user-answer");
          var unicode = data["status"] === "correct" ? checkMark : cross
          hideButtons(cell, unicode);
        }
      },
      error: function() {
      }
    });
  }

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
          var unicode = $(self).hasClass("correct-answer") ? checkMark : cross
          hideButtons($(self).parent(), unicode);
        },
        error: function() {
        }
      });
    }); //end click()
  }

  function hideButtons(cell, unicode) {
    $(cell).children().addClass("hide");
    var cellClassName = unicode === "\u2713" ? "correct" : "incorrect"
    $(cell).addClass(cellClassName);
    $(cell).text(unicode);
  }

  $(".grade-exam").click(function() {
    var examId = $(".exam-information").data("exam-id");
    $.ajax({
      url: "/grade_exam",
      type: "POST",
      data: {
        id: examId
      },
      dataType: "json",
      success: function(data){
        var correctAnswers = data.correct_answers || 0;
        var incorrectAnswers = data.incorrect_answers || 0;
        var unansweredQuestions = data.unanswered_questions || 0;
        var percentCorrect = (correctAnswers / (correctAnswers + incorrectAnswers + unansweredQuestions) * 100).toFixed(1);
        $(".percent-correct").text(percentCorrect + "%");
        $(".correct-answers").text(correctAnswers);
        $(".incorrect-answers").text(incorrectAnswers);
        $(".unanswered-questions").text(unansweredQuestions);
      },
      error: function() {
      }
    });
  });

});
