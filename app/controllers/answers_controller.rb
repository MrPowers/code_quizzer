class AnswersController < ApplicationController
  def set_answer_status
    authorize! :create, Answer
    @answer = Answer.where(:exam_id => params[:answer][:exam_id], :question_id => params[:answer][:question_id]).first_or_initialize
    authorize! :update, @answer
    @answer.status = params[:answer][:status]
    respond_to do |format|
      if @answer.save
        format.json { render :json => @answer }
      else
        format.json { render :json => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  def get_answer
    @answer = Answer.where(:exam_id => params[:answer][:exam_id], :question_id => params[:answer][:question_id]).first
    authorize! :show, @answer
    respond_to do |format|
      format.json { render :json => @answer }
    end
  end
end
