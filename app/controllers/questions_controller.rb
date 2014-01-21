class QuestionsController < ApplicationController
  load_and_authorize_resource :quiz
  load_and_authorize_resource :question, :through => :quiz

  def create
    @question.user = current_user
    if @question.save
      redirect_to topic_quiz_path(topic_id: @quiz.topic.id, id: @quiz, anchor: "new_question")
    end
  end

  def edit
  end

  def update
    if @question.update_attributes(params[:question])
      redirect_to topic_quiz_path(topic_id: @quiz.topic.id, id: @quiz)
    end
  end

   def destroy
    @question.destroy
    redirect_to topic_quiz_path(topic_id: @quiz.topic.id, id: @quiz)
  end

  def show
  end

end
