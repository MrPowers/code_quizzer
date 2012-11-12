# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Test.create(body: "Ruby")

Question.create(body: "What is 2 + 2", answer: "Four", test_id: 1)
Question.create(body: "What is the square root of 69", answer: "Eight sumptin", test_id: 1)