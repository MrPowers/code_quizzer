# bare bones seeds

author = User.create email: 'bob@example.com', password: 'Password1', password_confirmation: 'Password1', username: Faker::Internet.user_name

# create admin
admin = User.create email: 'you@example.com', password: 'password', password_confirmation: 'password', username: Faker::Internet.user_name, role: 'admin'

f1 = Family.create name: 'Programming Family', description: 'A family description'
t1 = f1.topics.create! name: 'Rails Topic', user_id: admin.id, slug: 'topic-slug', family_id: f1.id
quiz1 = t1.quizzes.create! body: 'MVC Quiz', user_id: admin.id, slug: 'quiz-slug', description: 'A first quiz', page_title: 'a quiz page title'
quiz1.questions.create! body: 'Knock knock', answer: "Who's there", user_id: admin.id
