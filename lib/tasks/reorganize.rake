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

  desc "Add priority for sorting for topics on 'Programming' page"
  task :add_priority_to_topics => :environment do
    desired_order = ["Basic Ruby", "Ruby", "Core CS", "Rails", "jQuery", "RSpec", "JavaScript", "HTML / CSS", "Unix / Bash", "Git/Github", "CoffeeScript"]
    desired_order.each_with_index do |name, index|
      topic = Topic.find_by_name(name)
      puts "Topic #{name} not found" unless topic
      topic.update_attribute(:priority, index)
    end
  end
end
