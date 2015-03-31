family = Family.create!(
  name: "Programming",
  description: "Ruby, Rails and JavaScript practice problems",
  page_title: "Learn Ruby, Rails, JavaScript | How to code",
  slug: "learn-programming"
)

admin = User.create email: 'you@example.com', password: 'password', password_confirmation: 'password', username: Faker::Internet.user_name, role: 'admin'

topic = family.topics.create! name: 'Rails Topic', slug: 'topic-slug', family_id: family.id
quiz1 = topic.quizzes.create! body: 'MVC Quiz', slug: 'quiz-slug', description: 'A first quiz', page_title: 'a quiz page title'
quiz1.questions.create! body: 'Knock knock', answer: "Who's there"
