user = User.create email: "bob@example.com", password: "Password1", password_confirmation: "Password1"

f1 = Family.create name: "Programming Family"
Family.create name: "Books Family"

t1 = f1.topics.create! name: "Rails Topic", user_id: user.id

quiz1 = t1.quizzes.create! body: "MVC Quiz", user_id: user.id

quiz1.questions.create! body: "Knock knock", answer: "Who's there", user_id: user.id
