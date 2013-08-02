namespace :reorganize do
  desc "Move select quizzes to 'More Programming' page"
  task :move_to_more_programming => :environment do
    topics_to_move = ['Other', 'RailsCasts', 'Minitest', 'More RailsCasts', 'Vim', 'Finance']
    more_programming_id = Family.find_by_name("More Programming").id
    if more_programming_id
      topics_to_move.each do |topic_name|
        topic = Topic.find_by_name(topic_name)
        topic.update_attribute(:family_id, more_programming_id) if topic
      end
    end
  end
end
