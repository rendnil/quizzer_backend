# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "rest-client"
require "pry"
#base_api_url = "http://jservice.io/api/clues?category=780&offset=0"
base_api_url = "http://jservice.io/api/clues?"
american_history_api_id = 780
food_api_id = 49
mythology_api_id = 680
science_api_id = 25
us_cities_api_id = 7
people_api_id = 442
television_api_id = 67
history_api_id = 114
pop_music_api_id = 770
universities_api_id = 672
literature_api_id = 574
movies_api_id = 309

Category.all.destroy_all
Question.all.destroy_all

puts "creating categories"
  american_history = Category.create(name: "American History")
  food = Category.create(name: "Food")
  mythology = Category.create(name: "Mythology")
  science = Category.create(name: "Science")
  us_cities = Category.create(name: "US Cities")
  people = Category.create(name: "People")
  television = Category.create(name: "Television")
  history = Category.create(name: "History")
  pop_music = Category.create(name: "Pop Music")
  universities = Category.create(name: "Universities")
  literature = Category.create(name: "Literature")
  movies = Category.create(name: "Movies")
puts "done creating categories"

categories = [
  {category_name: american_history, id: 780, count:300},
  {category_name: food, id: 49, count:300},
  {category_name: mythology, id: 680, count:200},
  {category_name: science, id: 25, count:300},
  {category_name: us_cities, id: 7, count:300},
  {category_name: people, id: 442, count:300},
  {category_name: television, id: 67, count:300},
  {category_name: history, id: 114, count:300},
  {category_name: pop_music, id: 770, count:200},
  {category_name: universities, id: 672, count:200},
  {category_name: literature, id: 574, count:200},
  {category_name: movies, id: 309, count:200}
]

categories.each do |category|
  # binding.pry
  puts "making #{category[:category_name].name} questions"
  offset = 0
  while offset<category[:count]
    api_url = "#{base_api_url}category=#{category[:id]}&offset=#{offset}"
    question_data = JSON.parse(RestClient.get(api_url))

    question_data.each do |question|
      if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
        Question.create(category_id: category[:category_name].id, question: question["question"], answer: question["answer"], value: question["value"])
      end
    end

    offset +=100
  end
  puts "done making #{category[:category_name].name} questions"
end
