# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Answer.destroy_all
Question.destroy_all

10.times do |index|
  f = Question.create!(
        title: Faker::Hacker.say_something_smart,
        content: Faker::Hacker.say_something_smart,
        user_id: 3
      )
  5.times do |index|
    Answer.create!(
      answer: Faker::StarWars.quote,
      user_id: 3,
      question_id: f.id
    )
  end
end


p "Created #{Answer.count} answers"
p "Created #{Question.count} questions"
