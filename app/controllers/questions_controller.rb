class QuestionsController < ApplicationController
  before_filter :find_quiz
  before_filter :find_question, :except => [:create]

  def create
    @question = @quiz.questions.new(params[:question])
    @question.user = current_user
    authorize! :create, @question
    if @question.save
      redirect_to topic_quiz_path(topic_id: @quiz.topic.id, id: @quiz, anchor: "new_question")
    end
  end

  def edit
    authorize! :update, @question
  end

  def update
    authorize! :update, @question
    if @question.update_attributes(params[:question])
      redirect_to topic_quiz_path(topic_id: @quiz.topic.id, id: @quiz)
    end
  end

  def destroy
    authorize! :destroy, @question
    @question.destroy
    redirect_to topic_quiz_path(topic_id: @quiz.topic.id, id: @quiz)
  end

  private

  def find_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end
end
