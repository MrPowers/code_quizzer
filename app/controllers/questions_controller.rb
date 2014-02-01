class QuestionsController < ApplicationController
  before_filter :find_question, :except => [:create]

  def create
    @quiz = Quiz.where(slug: params[:quiz_id]).first
    @question = @quiz.questions.new(params[:question])
    @question.user = current_user
    authorize! :create, @question
    if @question.save
      redirect_to topic_quiz_path(topic_id: @quiz.topic.slug, id: @quiz, anchor: "new_question")
    end
  end

  def edit
    @quiz = Quiz.find(params[:quiz_id])
    authorize! :update, @question
  end

  def update
    @quiz = Quiz.where(slug: params[:quiz_id]).first
    authorize! :update, @question
    if @question.update_attributes(params[:question])
      redirect_to topic_quiz_path(topic_id: @quiz.topic.slug, id: @quiz)
    end
  end

  def destroy
    @quiz = Quiz.where(slug: params[:quiz_id]).first
    authorize! :destroy, @question
    @question.destroy
    redirect_to topic_quiz_path(topic_id: @quiz.topic.slug, id: @quiz)
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end
end
