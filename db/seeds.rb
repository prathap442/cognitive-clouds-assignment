# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Topics
topic_names = ["fiction", "science", "sports", "club", "music"]
topic_names.each do |topic_name|
  t1 = Topic.new(name: topic_name)
  t1.save
  5.times do |time|
    t1.questions.new(name: "topic_#{topic_name}_question_#{time+1}",user_id: Random.rand(1..2))
    t1.save
  end
end


