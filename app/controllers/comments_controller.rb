class CommentsController < ApplicationController
  def create
    @quiz = Quiz.find(params[:quiz_id])
    @comment = Comment.new(params[:comment].merge({ :quiz_id => @quiz.id, :user_id => current_user.id }))
    if @comment.save
      redirect_to quiz_path(@quiz, anchor: "new_comment")
    end
  end
end
