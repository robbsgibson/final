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
Storesection.delete_all

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
shakshuka = Recipe.create(user_id: robb.id, title: "Shakshuka", image: "Shakshuka.jpg", description: "Middle eastern breakfast of poached eggs on top of a tomato stew, slightly spicy.", mealtype_id: breakfast.id, creation_date: "12/1/2011")
nutella_popsicles = Recipe.create(user_id: robb.id, title: "Nutella Popsicles", image: "Nutellapopsicles.jpg",description: "Delicious popsicles, great for a hot summer day or after school snack.", mealtype_id: dessert.id, creation_date: "1/10/2012")
korean_tofu_stew = Recipe.create(user_id: robb.id, title: "Korean Soft Tofu Stew (Soondubu Jjigae)", image: "koreanstew.jpg", description: "spicy stew with silken tofu.", mealtype_id: soup.id, creation_date: "1/14/2015")
moroccan_stew = Recipe.create(user_id: robb.id, title: "Moroccan Pumpkin Lentil Stew", image: "moroccanstew.jpg", description: "hearty stew that's great in the fall and winter.", mealtype_id: dinner.id)
udon_chicken_soup = Recipe.create(user_id: robb.id, title: "Udon Chicken Noodle Soup", image: "udonchickennoodle.jpg", description: "Comfy food with a little spice.", mealtype_id: soup.id)
pavlova = Recipe.create(user_id: robb.id, title: "Pavlova", image: "pavlova.jpg", description: "Giant meringue dessert.", mealtype_id: dessert.id)
aji_de_gallina = Recipe.create(user_id: juan.id, title: "Aji De Gallina", image: "ajidegallina.jpg", description: "Yummy peruvian dish.", mealtype_id: dinner.id)

puts "Creating the store sections..."
# Create store sections table
fresh_produce = Storesection.create(section: "Fresh Produce")
meat = Storesection.create(section: "Meat")
bakery = Storesection.create(section: "Bakery")
refrigerator = Storesection.create(section: "Refrigerator")
frozen = Storesection.create(section: "Frozen")
spices = Storesection.create(section: "Spices")
baking = Storesection.create(section: "Baking")
grocery = Storesection.create(section: "Grocery")

# Create Ingredient
puts "Creating the ingredient database..."
whole_peeled_tomatoes = Product.create(name: "Whole-peeled tomatoes", storesectioin_id: fresh_produce.id)
eggs = Product.create(name: "Eggs", storesectioin_id: refrigerator.id)
olive_oil = Product.create(name: "Olive oil", storesectioin_id: grocery.id)
serano_peppers = Product.create(name: "Serrano peppers", storesectioin_id: fresh_produce.id)
yellow_onion = Product.create(name: "Onion (yellow)", storesectioin_id: fresh_produce.id)
garlic = Product.create(name: "garlic", storesectioin_id: fresh_produce.id)
cumin_ground = Product.create(name: "cumin (ground)", storesectioin_id: spices.id)
paprika = Product.create(name: "paprika", storesectioin_id: spices.id)
chicken = Product.create(name: "chicken", storesectioin_id: meat.id)
egg_whites = Product.create(name: "Egg whites", storesectioin_id: refrigerator.id)
cream_of_tartar = Product.create(name: "Cream of Tartar", storesectioin_id: spices.id)
vanilla_extract = Product.create(name: "Vanilla Extract", storesectioin_id: baking.id)
caster_sugar = Product.create(name: "Caster Sugar", storesectioin_id: baking.id)
cornflour = Product.create(name: "Cornflour", storesectioin_id: baking.id)
arrowroot = Product.create(name: "Arrowroot", storesectioin_id: baking.id)
white_vinegar = Product.create(name: "White Vinegar", storesectioin_id: baking.id)
cream = Product.create(name: "Cream", storesectioin_id: refrigerator.id)
yoghurt_plain = Product.create(name: "Yogurht (plain)", storesectioin_id: refrigerator.id)
strawberries = Product.create(name: "Strawberries", storesectioin_id: fresh_produce.id)
honey = Product.create(name: "Honey", storesectioin_id: grocery.id)

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
Ingredient.create(recipe_id: udon_chicken_soup.id, product_id: chicken.id, quantity: "2", measurement: "breast")
Ingredient.create(recipe_id: moroccan_stew.id, product_id: chicken.id, quantity: "1", measurement: "breast")
Ingredient.create(recipe_id: pavlova.id, product_id: egg_whites.id, quantity: "6", measurement: "eggs")
Ingredient.create(recipe_id: pavlova.id, product_id: cream_of_tartar.id, quantity: "1/4", measurement: "teaspoon")
Ingredient.create(recipe_id: pavlova.id, product_id: vanilla_extract.id, quantity: "1", measurement: "teaspoon")
Ingredient.create(recipe_id: pavlova.id, product_id: caster_sugar.id, quantity: "4/3", measurement: "cups")
Ingredient.create(recipe_id: pavlova.id, product_id: cornflour.id, quantity: "1", measurement: "tablespoon")
Ingredient.create(recipe_id: pavlova.id, product_id: arrowroot.id, quantity: "2", measurement: "tablespoons")
Ingredient.create(recipe_id: pavlova.id, product_id: white_vinegar.id, quantity: "2", measurement: "teaspoons")
Ingredient.create(recipe_id: pavlova.id, product_id: cream.id, quantity: "300", measurement: "ml")
Ingredient.create(recipe_id: pavlova.id, product_id: yoghurt_plain.id, quantity: "300", measurement: "ml")
Ingredient.create(recipe_id: pavlova.id, product_id: strawberries.id, quantity: "2", measurement: "punnets")
Ingredient.create(recipe_id: pavlova.id, product_id: honey.id, quantity: "", measurement: "")


puts "Creating the recipe specific ingredients..."
# Create shopping list
sunday = Shoppinglist.create(user_id: robb.id, name: "Sunday")
summer = Shoppinglist.create(user_id: robb.id, name: "Summer")
pavlova = Shoppinglist.create(user_id: robb.id, name: "Pavlova")

puts "Creating the items added to shopping lists..."
# Create items for shopping list
Item.create(shoppinglist_id: sunday.id, recipe_id: shakshuka.id)
Item.create(shoppinglist_id: sunday.id, recipe_id: moroccan_stew.id)
Item.create(shoppinglist_id: sunday.id, recipe_id: udon_chicken_soup.id)
Item.create(shoppinglist_id: summer.id, recipe_id: udon_chicken_soup.id)
Item.create(shoppinglist_id: pavlova.id, recipe_id: pavlova.id)


