class CommentsController < ApplicationController
  def create
    @quiz = Quiz.find(params[:quiz_id])
    @comment = Comment.new(params[:comment].merge({ :quiz_id => @quiz.id, :user_id => current_user.id }))
    if @comment.save
      redirect_to topic_quiz_path(topic_id: @quiz.topic.id, id: @quiz, anchor: "new_comment")
    end
  end
end
