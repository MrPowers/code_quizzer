class ExamsController < ApplicationController
  def grade_exam
    @exam = Exam.find(params[:id])
    authorize! :update, @exam
    @exam.grade
    respond_to do |format|
      format.json { render :json => @exam }
    end
  end

  def index
    @completed_exams = Exam.where(:status => "graded").limit(50).order("id desc")
    @exams_in_progress = Exam.where("status IS NULL").limit(50).order("id desc")
  end

  def user_exams
    @completed_exams = Exam.where(:user_id => current_user.id, :status => "graded").limit(50).order("id desc")
    @exams_in_progress = Exam.where(:user_id => current_user.id).where("status IS NULL").limit(50).order("id desc")
  end
end
