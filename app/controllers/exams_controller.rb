class ExamsController < ApplicationController
  def grade_exam
    @exam = Exam.find(params[:id])
    authorize! :update, @exam
    @exam.update_attribute(:is_graded, true)
    respond_to do |format|
      methods = [:percent_correct, :correct_answers_count, :incorrect_answers_count, :blank_answers_count]
      format.json { render :json => @exam.to_json(methods: methods) }
    end
  end

  def cancel_exam
    exams = Exam.where(:quiz_id => params[:quiz_id], :user_id => current_user.id, :is_canceled => nil)
    authorize! :update, exams.first
    exams.each { |e| e.update_attribute(:is_canceled, true) }
    respond_to do |format|
      format.json { render :json => exams }
    end
  end

  def index
    @completed_exams = Exam.where(:is_graded => true).limit(50).order("updated_at desc")
    @exams_in_progress = Exam.where("is_graded IS NULL").limit(50).order("created_at desc")
  end

  def user_exams
    @completed_exams = Exam.where(:user_id => current_user.id, :is_graded => true).limit(50).order("updated_at desc")
    @exams_in_progress = Exam.where(:user_id => current_user.id).where("is_graded IS NULL").limit(50).order("created_at desc")
  end

  def graded_count
    respond_to do |format|
      if current_user
        quiz_id = params[:quiz_id]
        exams = Exam.where(:user_id => current_user.id, :quiz_id => quiz_id)
        result = exams.inject({"graded" => 0, "cancelled" => 0, "not_graded" => 0}) do |memo, exam|
          if exam.is_graded == true
            memo["graded"] += 1
          elsif exam.is_canceled == true
            memo["cancelled"] += 1
          else
            memo["not_graded"] += 1
          end
          memo
        end
        format.json { render :json => result }
      else
        format.json { head :no_content }
      end
    end
  end

end
