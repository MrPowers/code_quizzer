task :update_col => :environment do |t, args|
	quiz = Quiz.find(:quiz_id)
	quiz.topic_id = :topic_id
	quiz.save
end
