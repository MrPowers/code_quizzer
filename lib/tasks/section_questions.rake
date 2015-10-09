namespace :section_questions do
  desc "Deletes all the section questions in the database"
  task :delete_all => :environment do
    questions = SectionQuestion.all
    questions.each {|q| q.destroy!}
  end
end
