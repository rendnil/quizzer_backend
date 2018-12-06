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

Category.all.destroy_all
Question.all.destroy_all

puts "creating categories"
  american_history = Category.create(name: "American History")
  food = Category.create(name: "Food")
  mythology = Category.create(name: "Mythology")
  science = Category.create(name: "Science")
puts "done creating categories"

puts "making american history questions"
  american_history_api_url = "#{base_api_url}category=#{american_history_api_id}&offset=0"
  american_history_question_data = RestClient.get(american_history_api_url)
  american_history_question_data = JSON.parse(american_history_question_data)

  american_history_question_data.each do |question|
    Question.create(category_id: american_history.id, question: question["question"], answer: question["answer"], value: question["value"])
  end

  american_history_api_url = "#{base_api_url}category=#{american_history_api_id}&offset=100"
  american_history_question_data = RestClient.get(american_history_api_url)
  american_history_question_data = JSON.parse(american_history_question_data)

  american_history_question_data.each do |question|
    Question.create(category_id: american_history.id, question: question["question"], answer: question["answer"], value: question["value"])
  end

  american_history_api_url = "#{base_api_url}category=#{american_history_api_id}&offset=200"
  american_history_question_data = RestClient.get(american_history_api_url)
  american_history_question_data = JSON.parse(american_history_question_data)

  american_history_question_data.each do |question|
    Question.create(category_id: american_history.id, question: question["question"], answer: question["answer"], value: question["value"])
  end


puts "done making american history questions"


puts "making food questions"
  food_api_url = "#{base_api_url}category=#{food_api_id}&offset=0"
  food_question_data = RestClient.get(food_api_url)
  food_question_data = JSON.parse(food_question_data)

  food_question_data.each do |question|
    Question.create(category_id: food.id, question: question["question"], answer: question["answer"], value: question["value"])
  end

  food_api_url = "#{base_api_url}category=#{food_api_id}&offset=100"
  food_question_data = RestClient.get(food_api_url)
  food_question_data = JSON.parse(food_question_data)

  food_question_data.each do |question|
    Question.create(category_id: food.id, question: question["question"], answer: question["answer"], value: question["value"])
  end

  food_api_url = "#{base_api_url}category=#{food_api_id}&offset=200"
  food_question_data = RestClient.get(food_api_url)
  food_question_data = JSON.parse(food_question_data)

  food_question_data.each do |question|
    Question.create(category_id: food.id, question: question["question"], answer: question["answer"], value: question["value"])
  end
puts "done making food questions"

puts "making mythology questions"
  mythology_api_url = "#{base_api_url}category=#{mythology_api_id}&offset=0"
  mythology_question_data = RestClient.get(mythology_api_url)
  mythology_question_data = JSON.parse(mythology_question_data)

  mythology_question_data.each do |question|
    Question.create(category_id: mythology.id, question: question["question"], answer: question["answer"], value: question["value"])
  end

  mythology_api_url = "#{base_api_url}category=#{mythology_api_id}&offset=100"
  mythology_question_data = RestClient.get(mythology_api_url)
  mythology_question_data = JSON.parse(mythology_question_data)

  mythology_question_data.each do |question|
    Question.create(category_id: mythology.id, question: question["question"], answer: question["answer"], value: question["value"])
  end
puts "done making mythology questions"

puts "making science questions"
  science_api_url = "#{base_api_url}category=#{science_api_id}&offset=0"
  science_question_data = RestClient.get(science_api_url)
  science_question_data = JSON.parse(science_question_data)

  science_question_data.each do |question|
    Question.create(category_id: science.id, question: question["question"], answer: question["answer"], value: question["value"])
  end

  science_api_url = "#{base_api_url}category=#{science_api_id}&offset=100"
  science_question_data = RestClient.get(science_api_url)
  science_question_data = JSON.parse(science_question_data)

  science_question_data.each do |question|
    Question.create(category_id: science.id, question: question["question"], answer: question["answer"], value: question["value"])
  end

  science_api_url = "#{base_api_url}category=#{science_api_id}&offset=200"
  science_question_data = RestClient.get(science_api_url)
  science_question_data = JSON.parse(science_question_data)

  science_question_data.each do |question|
    Question.create(category_id: science.id, question: question["question"], answer: question["answer"], value: question["value"])
  end
puts "done making science questions"
