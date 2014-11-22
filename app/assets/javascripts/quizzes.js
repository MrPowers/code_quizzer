$(document).ready(function(){

  $('.answer').click(function() {
    $(this).toggleClass('no-opacity');
  });

  function addButtonListeners (buttons, html, elementClass)  {
    $.each(buttons, function(index, button) {
      $(button).closest('form').on('ajax:success', function() {
        $(this).closest("td").html(html).addClass(elementClass);
      });
    });
  }

  var checkMark = "\u2713";
  var correctAnswers = $('.correct-answer');
  addButtonListeners(correctAnswers, checkMark, "correct");

  var cross = "\u2718";
  var incorrectAnswers = $('.incorrect-answer');
  addButtonListeners(incorrectAnswers, cross, "incorrect");

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
      }
    });
  });

});
