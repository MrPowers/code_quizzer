class QuizzesController < ApplicationController
  def show
    @topic = Topic.find(params[:topic_id])
    authorize! :show, @topic
    @quiz = Quiz.find(params[:id])
    authorize! :show, @quiz
    if current_user
      authorize! :create, Exam
      @exam = Exam.where(:quiz_id => @quiz.id, :user_id => current_user.id).where("status IS NULL").order("id desc").first_or_create
      authorize! :update, @exam
    end
  end
end
