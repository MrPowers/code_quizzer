class CommentsController < ApplicationController
  def create
    @quiz = Quiz.where(slug: params[:quiz_id]).first
    @comment = Comment.new(params[:comment].merge({ :quiz_id => @quiz.id, :user_id => current_user.id }))
    if @comment.save
      redirect_to topic_quiz_path(topic_id: @quiz.topic.slug, id: @quiz.slug, anchor: "new_comment")
    end
  end
end
