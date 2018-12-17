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

puts "making american history questions"
  american_history_api_url = "#{base_api_url}category=#{american_history_api_id}&offset=0"
  american_history_question_data = RestClient.get(american_history_api_url)
  american_history_question_data = JSON.parse(american_history_question_data)

  american_history_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: american_history.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  american_history_api_url = "#{base_api_url}category=#{american_history_api_id}&offset=100"
  american_history_question_data = RestClient.get(american_history_api_url)
  american_history_question_data = JSON.parse(american_history_question_data)

  american_history_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: american_history.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  american_history_api_url = "#{base_api_url}category=#{american_history_api_id}&offset=200"
  american_history_question_data = RestClient.get(american_history_api_url)
  american_history_question_data = JSON.parse(american_history_question_data)

  american_history_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: american_history.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end


puts "done making american history questions"


puts "making food questions"
  food_api_url = "#{base_api_url}category=#{food_api_id}&offset=0"
  food_question_data = RestClient.get(food_api_url)
  food_question_data = JSON.parse(food_question_data)

  food_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: food.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  food_api_url = "#{base_api_url}category=#{food_api_id}&offset=100"
  food_question_data = RestClient.get(food_api_url)
  food_question_data = JSON.parse(food_question_data)

  food_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: food.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  food_api_url = "#{base_api_url}category=#{food_api_id}&offset=200"
  food_question_data = RestClient.get(food_api_url)
  food_question_data = JSON.parse(food_question_data)

  food_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: food.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end
puts "done making food questions"

puts "making mythology questions"
  mythology_api_url = "#{base_api_url}category=#{mythology_api_id}&offset=0"
  mythology_question_data = RestClient.get(mythology_api_url)
  mythology_question_data = JSON.parse(mythology_question_data)

  mythology_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: mythology.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  mythology_api_url = "#{base_api_url}category=#{mythology_api_id}&offset=100"
  mythology_question_data = RestClient.get(mythology_api_url)
  mythology_question_data = JSON.parse(mythology_question_data)

  mythology_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: mythology.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end
puts "done making mythology questions"

puts "making science questions"
  science_api_url = "#{base_api_url}category=#{science_api_id}&offset=0"
  science_question_data = RestClient.get(science_api_url)
  science_question_data = JSON.parse(science_question_data)

  science_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: science.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  science_api_url = "#{base_api_url}category=#{science_api_id}&offset=100"
  science_question_data = RestClient.get(science_api_url)
  science_question_data = JSON.parse(science_question_data)

  science_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: science.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  science_api_url = "#{base_api_url}category=#{science_api_id}&offset=200"
  science_question_data = RestClient.get(science_api_url)
  science_question_data = JSON.parse(science_question_data)

  science_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: science.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end
puts "done making science questions"

puts "making us cities questions"
  us_cities_api_url = "#{base_api_url}category=#{us_cities_api_id}&offset=0"
  us_cities_question_data = RestClient.get(us_cities_api_url)
  us_cities_question_data = JSON.parse(us_cities_question_data)

  us_cities_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: us_cities.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  us_cities_api_url = "#{base_api_url}category=#{us_cities_api_id}&offset=100"
  us_cities_question_data = RestClient.get(us_cities_api_url)
  us_cities_question_data = JSON.parse(us_cities_question_data)

  us_cities_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: us_cities.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  us_cities_api_url = "#{base_api_url}category=#{us_cities_api_id}&offset=200"
  us_cities_question_data = RestClient.get(us_cities_api_url)
  us_cities_question_data = JSON.parse(us_cities_question_data)

  us_cities_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: us_cities.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end
puts "done making us cities questions"

puts "making people questions"
  people_api_url = "#{base_api_url}category=#{people_api_id}&offset=0"
  people_question_data = RestClient.get(people_api_url)
  people_question_data = JSON.parse(people_question_data)

  people_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: people.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  people_api_url = "#{base_api_url}category=#{people_api_id}&offset=100"
  people_question_data = RestClient.get(people_api_url)
  people_question_data = JSON.parse(people_question_data)

  people_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: people.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  people_api_url = "#{base_api_url}category=#{people_api_id}&offset=200"
  people_question_data = RestClient.get(people_api_url)
  people_question_data = JSON.parse(people_question_data)

  people_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: people.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end
puts "done making people questions"

puts "making television questions"
  television_api_url = "#{base_api_url}category=#{television_api_id}&offset=0"
  television_question_data = RestClient.get(television_api_url)
  television_question_data = JSON.parse(television_question_data)

  television_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: television.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  television_api_url = "#{base_api_url}category=#{television_api_id}&offset=100"
  television_question_data = RestClient.get(television_api_url)
  television_question_data = JSON.parse(television_question_data)

  television_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: television.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  television_api_url = "#{base_api_url}category=#{television_api_id}&offset=200"
  television_question_data = RestClient.get(television_api_url)
  television_question_data = JSON.parse(television_question_data)

  television_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: television.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end
puts "done making television questions"

puts "making history questions"
  history_api_url = "#{base_api_url}category=#{history_api_id}&offset=0"
  history_question_data = RestClient.get(history_api_url)
  history_question_data = JSON.parse(history_question_data)

  history_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: history.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  history_api_url = "#{base_api_url}category=#{history_api_id}&offset=100"
  history_question_data = RestClient.get(history_api_url)
  history_question_data = JSON.parse(history_question_data)

  history_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: history.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  history_api_url = "#{base_api_url}category=#{history_api_id}&offset=200"
  history_question_data = RestClient.get(history_api_url)
  history_question_data = JSON.parse(history_question_data)

  history_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: history.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end
puts "done making history questions"

puts "making pop music questions"
  pop_music_api_url = "#{base_api_url}category=#{pop_music_api_id}&offset=0"
  pop_music_question_data = RestClient.get(pop_music_api_url)
  pop_music_question_data = JSON.parse(pop_music_question_data)

  pop_music_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: pop_music.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  pop_music_api_url = "#{base_api_url}category=#{pop_music_api_id}&offset=100"
  pop_music_question_data = RestClient.get(pop_music_api_url)
  pop_music_question_data = JSON.parse(pop_music_question_data)

  pop_music_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: pop_music.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

puts "done making pop music questions"

puts "making universities questions"
  universities_api_url = "#{base_api_url}category=#{universities_api_id}&offset=0"
  universities_question_data = RestClient.get(universities_api_url)
  universities_question_data = JSON.parse(universities_question_data)

  universities_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: universities.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  universities_api_url = "#{base_api_url}category=#{universities_api_id}&offset=100"
  universities_question_data = RestClient.get(universities_api_url)
  universities_question_data = JSON.parse(universities_question_data)

  universities_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: universities.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

puts "done making literature questions"

puts "making literature questions"
  literature_api_url = "#{base_api_url}category=#{literature_api_id}&offset=0"
  literature_question_data = RestClient.get(literature_api_url)
  literature_question_data = JSON.parse(literature_question_data)

  literature_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: literature.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  literature_api_url = "#{base_api_url}category=#{literature_api_id}&offset=100"
  literature_question_data = RestClient.get(literature_api_url)
  literature_question_data = JSON.parse(literature_question_data)

  literature_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: literature.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

puts "done making literature questions"

puts "making movies questions"
  movies_api_url = "#{base_api_url}category=#{movies_api_id}&offset=0"
  movies_question_data = RestClient.get(movies_api_url)
  movies_question_data = JSON.parse(movies_question_data)

  movies_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: movies.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

  movies_api_url = "#{base_api_url}category=#{movies_api_id}&offset=100"
  movies_question_data = RestClient.get(movies_api_url)
  movies_question_data = JSON.parse(movies_question_data)

  movies_question_data.each do |question|
    if (question["question"].length>1) && (question["answer"].length>1) && (question["answer"].include?("<") == false)
      Question.create(category_id: movies.id, question: question["question"], answer: question["answer"], value: question["value"])
    end
  end

puts "done making movies questions"
