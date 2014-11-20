$(document).ready(function(){


  // when an answer is clicked, it is viewable
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
    setButtonListener(correctButton, questionId, examId, true);
    setButtonListener(incorrectButton, questionId, examId, false);
    getAnswer(examId, questionId, questionRow);
  });

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
          var unicode = data["is_correct"] === true ? checkMark : cross
          hideButtons(cell, unicode);
        }
      },
      error: function() {
      }
    });
  }

  function setButtonListener(button, questionId, examId, isCorrect) {
    $(button).click(function(){
      var self = this;
      $.ajax({
        url: "/set_answer_status",
        type: "POST",
        data: {
          answer: {
            exam_id: examId,
            question_id: questionId,
            is_correct: isCorrect
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
    });
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
        var correctAnswers = data.correct_answers_count;
        var incorrectAnswers = data.incorrect_answers_count;
        var unansweredQuestions = data.blank_answers_count;
        var percentCorrect = ((data.percent_correct) * 100).toFixed(1);
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
