class CommentsController < ApplicationController
  def create
    @quiz = Quiz.where(slug: params[:quiz_id]).first
    @comment = Comment.new
    @comment.body = comment_params[:body]
    @comment.quiz_id = @quiz.id
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to topic_quiz_path(topic_id: @quiz.topic.slug, id: @quiz.slug, anchor: "new_comment")
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
