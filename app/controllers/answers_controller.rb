class AnswersController < ApplicationController

  def set_answer_status
    authorize! :create, Answer
    @answer = Answer.where(:exam_id => params[:exam_id], :question_id => params[:question_id]).first_or_initialize
    authorize! :update, @answer
    @answer.is_correct = params[:is_correct]
    respond_to do |format|
      if @answer.save
        format.json { render :json => @answer }
      else
        format.json { render :json => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

end
