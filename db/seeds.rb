# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# if Rails.env.development?
#   puts "Seeding..."
#   10.times do
#     c = Cocktail.create!(
#       name:
#     puts "Restaurant id #{c.id} created."
#   end

#   puts "Seeding done"
# end

require 'open-uri'
require 'json'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic'
# file = open(url).read
# readable_file = JSON.parse(file)

# readable_file["drinks"].each do |item|
#     Cocktail.create!(
#       name: item["strDrink"]
#     )
# end

ingredients_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_file = open(ingredients_url).read
ingredients = JSON.parse(ingredients_file)

ingredients['drinks'].each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end


