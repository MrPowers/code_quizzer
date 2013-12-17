namespace :user do
  desc "Add usernames to accounts without usernames"
  task :add_usernames => :environment do
    User.all.each do |user|
      next if user.username
      random_username = ""
      while random_username.length < 6
        random_username = Faker::Internet.user_name
      end
      user.username = random_username
      user.save
    end
  end
end

