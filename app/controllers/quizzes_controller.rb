class QuizzesController < ApplicationController
  def show
    @topic = Topic.where(slug: params[:topic_id]).first
    authorize! :show, @topic
    @quiz = Quiz.where(slug: params[:id]).first
    authorize! :show, @quiz
    if current_user
      authorize! :create, Exam
      @exam = Exam.where(:quiz_id => @quiz.id, :user_id => current_user.id).where("is_canceled IS NULL AND is_graded IS NULL").order("id desc").first_or_create(quiz_id: @quiz.id)
      authorize! :update, @exam
    end
  end
end
