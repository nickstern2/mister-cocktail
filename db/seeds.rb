require 'json'
require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
opened = open(url).read
parsed = JSON.parse(opened)

  # parsed.each do |ingredient|
  #   p ingredient[0]
  # end
 parsed["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
 end
