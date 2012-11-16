task :assign_roles => :environment do
  puts "assigning roles!"
  User.all.each do |user|
    user.update_attributes!(:role => "author")
  end
  User.find_by_email("powers@powers.com").update_attribute!(:role => "admin")
end
