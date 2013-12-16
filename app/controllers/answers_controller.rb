class AnswersController < ApplicationController
  def set_answer_status
    @answer = Answer.where(:exam_id => params[:answer][:exam_id], :question_id => params[:answer][:question_id]).first_or_initialize
    @answer.status = params[:answer][:status]
    respond_to do |format|
      if @answer.save
        format.json { render :json => @answer }
      else
        format.json { render :json => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end
end
