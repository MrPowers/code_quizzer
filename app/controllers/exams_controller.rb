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

  def graded_count
    respond_to do |format|
      if current_user
        quiz_id = params[:quiz_id]
        count = Exam.where(:user_id => current_user.id, :quiz_id => quiz_id, :status => "graded").count
        format.json { render :json => count }
      else
        format.json { head :no_content }
      end
    end
  end
end
