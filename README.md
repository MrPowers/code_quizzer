# CodeQuizzes

## About the site

[CodeQuizzes](http://codequizzes.com) contains a bunch of programming practice questions on Ruby, Rails, JavaScript, Bash, Git... and more!

I created quizzes for myself when I was learning to program and decided to create CodeQuizzes as my first Rails application to share these quizzes with the world.  The site is now used by hundreds of people a day!

## Model heirarchy

```
Family (learn_programming)
  Subject (ruby, golang, git)
    Topic (beginner, intermediate, advanced)
      Quiz
        Question
```

A family `has_many` subjects, a subject `has_man` topics,  a topic `has_many` quizzes, a quiz `has_many` questions.

## JavaScript Book

**This is an open souce book.**  Please submit pull requests if you have any suggestions to make the book better!

The JavaScript book chapters are located in the [js_book](https://github.com/MrPowers/code_quizzer/tree/master/js_book) directory as markdown files.  The sections are organized as a directed graph in [this class] (https://github.com/MrPowers/code_quizzer/blob/master/lib/js_book/sections.rb) and the questions are added to the database via the [seeds.rb file](https://github.com/MrPowers/code_quizzer/blob/master/db/seeds.rb).

If a question needs to be changed, update the seeds.rb file, delete all the records in the SectionQuestion model, and then reseed the database.  There is a rake task to delete all the records in the SectionQuestion model:

```ruby
rake section_questions:delete_all
```

Let's work together to make this book awesome!

## Running CodeQuizzes locally

1. Fork the repository
2. Setup your database.yml file
3. Run `rake db:migrate`
4. Run `rake db:seed`

## Contributing

Submit a pull request and I will gladly merge it.  If you would like to add a feature, shoot me an email and we can talk it out before you write code... or just submit a pull request and I'll merge your awesome feature.
