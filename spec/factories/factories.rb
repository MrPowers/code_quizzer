require 'faker'

FactoryGirl.define do
  factory :answer do |f|
    f.exam_id 1
    f.question_id 1
    f.is_correct "true"
  end
  
  factory :family do |f|
    f.name "Programming"
    f.description "Ruby, Rails and JavaScript practice problems"
    f.page_title "Learn Ruby, Rails, JavaScript | How to code"
    f.slug "learn-programming"
  end
  
  factory :challenge do |f|
    f.question "Programming"
    f.answer "answer"
    f.answer_description "Learn Ruby, Rails, JavaScript | How to code"
    f.slug "learn-programming"
    f.question_summary "summary"
  end
   
  factory :challenge_answer do |f|
    f.challenge_id 1
    f.user_id 1
    f.is_correct "true"
  end
  
  factory :quiz do |f|
    f.body "body"
    f.topic_id 1
    f.slug "some slug Dude"
    f.page_title "page title"
  end
  
  factory :section_question do |f|
     f.body 'body'
     f.answer 'answer'
     f.section_name 'answer'
     f.order 1
  end
  
  factory :student do |f|
    f.first_name "fname"
    f.last_name "lname"
    f.user_id 1
  end
  
  factory :student_webpage do |f|
    f.name "name slug"
    f.student_id 1
  end
  
  factory :topic do |f|
    f.name "some name"
    f.slug "fname lname"
  end
  
  factory :user do |f|
     f.email 'you@example.com'
     f.password 'password'
     f.password_confirmation 'password'
     f.username "username"
     f.role 'admin'
  end
  
  factory :video do |f|
    f.link "youtube.com"
    f.description "desc"
    f.quiz_id 1
  end
  
end