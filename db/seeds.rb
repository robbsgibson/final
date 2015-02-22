# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
User.delete_all
Recipe.delete_all
Ingredient.delete_all
Product.delete_all
Shoppinglist.delete_all
Mealtype.delete_all
Item.delete_all

# Create User
puts "Creating the users..."
robb = User.create(name: "Robb", password: "robb", email: "rgibson2015@kellogg.northwestern.edu")
juan = User.create(name: "Juan", password: "juan", email: "jsutil2015@kellogg.northwestern.edu")
noah = User.create(name: "Noah", password: "noah", email: "nbleicher2015@kellogg.northwestern.edu")
talia = User.create(name: "Talia", password: "talia", email: "taliabgibson@gmail.com")
shelley = User.create(name: "Shelley", password: "shelley")

puts "Creating the meal type specifics..."
# Create meal type
breakfast = Mealtype.create(name: "Breakfast")
lunch = Mealtype.create(name: "Lunch")
soup = Mealtype.create(name: "Soup")
dinner = Mealtype.create(name: "Dinner")
salad = Mealtype.create(name: "Salad")
dessert = Mealtype.create(name: "Dessert")

# Create Recipe
puts "Creating the recipe..."
shakshuka = Recipe.create(user_id: robb.id, title: "Shakshuka", description: "Middle eastern breakfast of poached eggs on top of a tomato stew, slightly spicy.", mealtype_id: breakfast.id, creation_date: "12/1/2011")
nutella_popsicles = Recipe.create(user_id: robb.id, title: "Nutella Popsicles", description: "Delicious popsicles, great for a hot summer day or after school snack.", mealtype_id: dessert.id, creation_date: "1/10/2012")
korean_tofu_stew = Recipe.create(user_id: robb.id, title: "Korean Soft Tofu Stew (Soondubu Jjigae)", description: "spicy stew with silken tofu.", mealtype_id: soup.id, creation_date: "1/14/2015")
moroccan_stew = Recipe.create(user_id: robb.id, title: "Moroccan Pumpkin Lentil Stew", description: "hearty stew that's great in the fall and winter.", mealtype_id: dinner.id)
udon_chicken_soup = Recipe.create(user_id: robb.id, title: "Udon Chicken Noodle Soup", description: "Comfy food with a little spice.", mealtype_id: soup.id)

# Create Ingredient
puts "Creating the ingredient database..."
whole_peeled_tomatoes = Product.create(name: "Whole-peeled tomatoes")
eggs = Product.create(name: "Eggs")
olive_oil = Product.create(name: "Olive oil")
serano_peppers = Product.create(name: "Serano peppers")
yellow_onion = Product.create(name: "Onion (yellow)")
garlic = Product.create(name: "garlic")
cumin_ground = Product.create(name: "cumin (ground)")
paprika = Product.create(name: "paprika")

puts "Creating the recipe specific ingredients..."
# Create recipe ingredients for Shakshuka
Ingredient.create(recipe_id: shakshuka.id, product_id: whole_peeled_tomatoes.id, quantity: "28", measurement: "ounce can")
Ingredient.create(recipe_id: shakshuka.id, product_id: eggs.id, quantity: "6")
Ingredient.create(recipe_id: shakshuka.id, product_id: olive_oil.id, quantity: "1/4", measurement: "cups")
Ingredient.create(recipe_id: shakshuka.id, product_id: serano_peppers.id, quantity: "3")
Ingredient.create(recipe_id: shakshuka.id, product_id: yellow_onion.id, quantity: "1")
Ingredient.create(recipe_id: shakshuka.id, product_id: garlic.id, quantity: "5", measurement: "cloves")
Ingredient.create(recipe_id: shakshuka.id, product_id: cumin_ground.id, quantity: "1", measurement: "teaspoon")
Ingredient.create(recipe_id: shakshuka.id, product_id: paprika.id, quantity: "1", measurement: "tablespoon")

puts "Creating the recipe specific ingredients..."
# Create shopping list
sunday = Shoppinglist.create(user_id: robb.id, name: "Sunday")
summer = Shoppinglist.create(user_id: robb.id, name: "Summer")

puts "Creating the items added to shopping lists..."
# Create items for shopping list
Item.create(shoppinglist_id: sunday.id, recipe_id: shakshuka.id)
Item.create(shoppinglist_id: sunday.id, recipe_id: moroccan_stew.id)
Item.create(shoppinglist_id: sunday.id, recipe_id: udon_chicken_soup.id)
Item.create(shoppinglist_id: summer.id, recipe_id: udon_chicken_soup.id)
