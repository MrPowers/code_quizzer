namespace :exams do

  def modernize_exam(exam)
    if exam.status == "graded"
      exam.update_column(:is_graded, true)
    elsif exam.status == "cancelled"
      exam.update_column(:is_canceled, true)
    end
  end

  desc "moves from status to boolean fields"
  task :modernize => :environment do
    Exam.find_each do |exam|
      modernize_exam(exam)
    end
  end

end
