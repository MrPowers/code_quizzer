class AnswersController < ApplicationController
  def set_answer_status
    @answer = Answer.where(:exam_id => params[:answer][:exam_id], :question_id => params[:answer][:question_id]).first
    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.json { render :json => @answer }
      else
        format.json { render :json => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end
end
