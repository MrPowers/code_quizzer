class QuestionsController < ApplicationController
  load_and_authorize_resource :quiz
  load_and_authorize_resource :question, :through => :quiz

  def create
    @question.user = current_user
    if @question.save
      redirect_to quiz_path(@quiz)
    end
  end

  def edit
  end

  def update
    if @question.update_attributes(params[:question])
      redirect_to quiz_path(@quiz)
    end
  end

   def destroy
    @question.destroy
    redirect_to quiz_path(@quiz)
  end

  def show
  end

end