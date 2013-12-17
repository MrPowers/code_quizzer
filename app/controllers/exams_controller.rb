class ExamsController < ApplicationController
  def grade_exam
    @exam = Exam.find(params[:id])
    @exam.grade
    respond_to do |format|
      format.json { render :json => @exam }
    end
  end
end
