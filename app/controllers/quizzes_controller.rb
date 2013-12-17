class QuizzesController < ApplicationController
  load_and_authorize_resource :topic
  load_and_authorize_resource :quiz, :through => :topic, :shallow => true
  def new
  end

  def create
    @quiz.user_id = current_user.id
    if @quiz.save
      redirect_to @quiz.topic.family
    end
  end

  def index
  end

  def show
    if current_user
      @exam = Exam.where(:quiz_id => @quiz.id, :user_id => current_user.id).where("status IS NULL").order("id desc").first_or_create
    end
  end

  def edit
  end

  def update
    if @quiz.update_attributes(params[:quiz])
      redirect_to topics_path
    end
  end

  def destroy
    @quiz.destroy
    redirect_to topics_path
  end

  def admin_update
    @quiz = Quiz.find(params[:id])
  end
end
