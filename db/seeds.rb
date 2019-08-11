if Rails.env.development?
  family = Family.create!(
    name: "Programming",
    description: "Ruby, Rails and JavaScript practice problems",
    page_title: "Learn Ruby, Rails, JavaScript | How to code",
    slug: "learn-programming"
  )

  ruby = Subject.where(name: "Ruby", slug: "learn-ruby").first_or_create
  ruby.slug = "ruby"
  ruby.save!
  javascript = Subject.where(name: "JavaScript", slug: "learn-javascript").first_or_create
  javascript.slug = "javascript"
  javascript.save!
  git = Subject.where(name: "Git", slug: "learn-git").first_or_create
  git.slug = "git"
  git.save!
  computer_science = Subject.where(name: "Computer Science", slug: "learn-computer-science").first_or_create
  computer_science.slug = "computer-science"
  computer_science.save!
  scala = Subject.where(name: "Scala", slug: "learn-scala").first_or_create
  scala.slug = "scala"
  scala.save!
  bash = Subject.where(name: "Bash", slug: "learn-bash").first_or_create
  bash.slug = "bash"
  bash.save!
  rails = Subject.where(name: "Rails", slug: "learn-rails").first_or_create
  rails.slug = "rails"
  rails.save!
  challenges = Subject.where(name: "Challenges", slug: "challenges").first_or_create

  User.create email: 'you@example.com', password: 'password', password_confirmation: 'password', username: "some_user", role: 'admin'

  topic = family.topics.create! name: 'Rails Topic', slug: 'topic-slug', family_id: family.id, subject_id: ruby.id
  quiz1 = topic.quizzes.create! body: 'MVC Quiz', slug: 'quiz-slug', description: 'A first quiz', page_title: 'a quiz page title'
  quiz1.questions.create! body: 'Knock knock', answer: "Who's there"
end
