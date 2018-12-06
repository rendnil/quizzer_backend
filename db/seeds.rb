# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "rest-client"
require "pry"
  api_url = "http://jservice.io/api/clues?category=780&offset=0"
  american_history_api_id = 780
  food_api_id = 49
  mythology_api_id = 680
  science_api_id = 25

Category.all.destroy_all

puts "creating categories"
  american_history = Category.create(name: "American History")
  food = Category.create(name: "Food")
  mythology = Category.create(name: "Mythology")
  science = Category.create(name: "Science")


  # fetch = RestClient.get(url)
  # fetch = JSON.parse(fetch)
  # binding.pry
  #
  # puts "#{fetch}"
puts "done creating categories"
