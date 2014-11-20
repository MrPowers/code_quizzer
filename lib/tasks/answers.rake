namespace :answers do

  desc "transition from status to is_correct"
  task :status_to_correct => :environment do
    Answer.find_each do |answer|
      if answer.status == "correct"
        answer.is_correct = true
      elsif answer.status == "incorrect"
        answer.is_correct = false
      else
        p answer.id
      end
      answer.save!
    end
  end

  desc "bad data"
  task :messed_up_status => :environment do
    Answer.all.each do |answer|
      p answer.id unless ["correct", "incorrect"].include?(answer.status)
    end
  end

end
